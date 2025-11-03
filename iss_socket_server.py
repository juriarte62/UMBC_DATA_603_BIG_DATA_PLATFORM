import time # datetime
import folium # the graph

# PySpark --> Apache Spark
from pyspark.sql import SparkSession
from pyspark.sql.functions import from_json, col
from pyspark.sql.types import StructType, StructField, StringType

import sys
sys.stdout.reconfigure(encoding='utf-8') # to avoid unicode encoding errors --pray it works (Johnny boy)
import os
# os.environ['JAVA_HOME'] = r'C:\Program Files\Eclipse Adoptium\jdk-17' # have to manually change my java home path
# os.environ['JAVA_HOME'] = r'/c/Program Files/Eclipse Adoptium/jdk-17.0.17.10-hotspot' # have to manually change my java home path
os.environ['JAVA_HOME'] = r'C:\Program Files\Eclipse Adoptium\jdk-17.0.17.10-hotspot'
# I had to mess around with my original hadoop settings -JU
os.environ['HADOOP_HOME'] = r'C:\hadoop'
os.environ['PATH'] += r';C:\hadoop\bin'
import socket
import json
import requests
import traceback
from datetime import datetime, timedelta

# ============================================================
# ISS SOCKET SERVER (Resilient Producer) — NASA Live Feed Streamer
# ============================================================

# ============================================================
# ISS SOCKET SERVER (Resilient v2.1) — Self-Healing Streamer
# ============================================================

import socket
import time
import json
import requests
import traceback
from datetime import datetime, timedelta

HOST = 'localhost'
PORT = 9999
ISS_API = 'http://api.open-notify.org/iss-now.json'

RUN_DURATION = 60 * 60   # 1 hour
INTERVAL = 5             # seconds between updates
MAX_RETRY_DELAY = 30     # cap exponential backoff

def start_iss_server():
    # Persistent socket setup
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server_socket.bind((HOST, PORT))
    server_socket.listen(1)

    print(f'[INFO] ISS Data Server running on {HOST}:{PORT}')
    print('[INFO] Waiting for Spark consumer to connect...')
    conn, addr = server_socket.accept()
    print(f'[INFO] Client connected: {addr}')

    session = requests.Session()
    session.headers.update({'User-Agent': 'ISS-Tracker/2.1'})

    start_time = datetime.now()
    end_time = start_time + timedelta(seconds=RUN_DURATION)

    retry_delay = INTERVAL

    while datetime.now() < end_time:
        try:
            response = session.get(ISS_API, timeout=10)
            if response.status_code == 200:
                data = response.json()
                msg = json.dumps(data) + '\n'
                conn.sendall(msg.encode('utf-8'))
                print(f'[SENT] {data}')
                retry_delay = INTERVAL  # reset on success
            else:
                print(f'[WARN] HTTP {response.status_code}, skipping this cycle.')
        except requests.exceptions.ConnectTimeout:
            print('[WARN] NASA API timeout — will retry next cycle.')
        except requests.exceptions.RequestException as e:
            print(f'[ERROR] Request issue: {e}')
            traceback.print_exc()
        except (BrokenPipeError, ConnectionResetError):
            print('[WARN] Connection to Spark lost. Waiting for reconnection...')
            conn.close()
            conn, addr = server_socket.accept()
            print(f'[INFO] Client reconnected: {addr}')
        except Exception as e:
            print(f'[ERROR] Unexpected issue: {e}')
            traceback.print_exc()

        # Maintain consistent pacing and backoff if needed
        time.sleep(retry_delay)
        retry_delay = min(retry_delay * 1.2, MAX_RETRY_DELAY)

    print('[INFO] 1 hour complete. Shutting down server.')
    conn.close()
    server_socket.close()

if __name__ == '__main__':
    start_iss_server()
