### Notice ### 
# This is the producer part of the streaming process
## 1) producer --> 2) consumer 
# run this first in the terminal then run iss_spark_visualizer.py to get the graph working

# -------------------------Package stuff -------------------------
# the graph package
import folium 

# PySpark --> Apache Spark (Streaming)
from pyspark.sql import SparkSession
from pyspark.sql.functions import from_json, col
from pyspark.sql.types import StructType, StructField, StringType

# OS set-up for correction version of JAVA and HDFS
## The tutorial's version is outdate, had to manually update to keep up with current spark
import sys
sys.stdout.reconfigure(encoding='utf-8') # to avoid unicode encoding errors --pray it works (Johnny boy)
import os
# os.environ['JAVA_HOME'] = r'C:\Program Files\Eclipse Adoptium\jdk-17' # have to manually change my java home path
# os.environ['JAVA_HOME'] = r'/c/Program Files/Eclipse Adoptium/jdk-17.0.17.10-hotspot' # have to manually change my java home path
os.environ['JAVA_HOME'] = r'C:\Program Files\Eclipse Adoptium\jdk-17.0.17.10-hotspot'
# I had to mess around with my original hadoop settings -JU
os.environ['HADOOP_HOME'] = r'C:\hadoop'
# Read message future johnny about why we have to use ; instead of : in path
## for whatever reason, some big brain at microsoft that you should put a ; in front of the C: directory
## which makes total sense, and by that I mean it makes no sense at all!
## The stackoverflow says this work and I'm sticking to it
os.environ['PATH'] += r';C:\hadoop\bin'

# Socket for producer set up in apache spark streaming
## set up for the consumer part later
import socket

# NASA API set up
import json # grab file
import requests # HTML json link stuff


# datetime for 5 sec increment and let run for 1 hour
import time 
from datetime import datetime, timedelta

# This is what I like to call the nagging package
## It tells me what I'm doing wrong and gives me 
## just enough clues so I can google the errors and eventually get this stupid script working
import traceback 

# -------------------------Package stuff -------------------------

# ------------------------- NASA ISS API JSON HTML stuff -------------------------
# Setting up ISS SOCKET SERVER (Resilient Producer) — NASA Live Feed Streamer
HOST = 'localhost' # good ol' reliable 
PORT = 9999 # if this doesn't work for any reason, use another one (8888 for ex/)
ISS_API = 'http://api.open-notify.org/iss-now.json' # nasa api link from HW assignment 

RUN_DURATION = 60 * 60   # 1 hour = 60 seconds/min * 60 min/hr
INTERVAL = 5             # seconds between updates
MAX_RETRY_DELAY = 30     # cap exponential backoff, in case the NASA API timeout for whatever reason

# Set up connection to the live feed NASA API
def start_iss_server():
    # Persistent socket setup
    # link for knowledge setup:
    ## https://www.geeksforgeeks.org/python/socket-programming-python/
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server_socket.bind((HOST, PORT))
    server_socket.listen(1)

    # This is just to check if the file is running correctly 
    print(f'[INFO] ISS Data Server running on {HOST}:{PORT}')
    print('[INFO] Waiting for Spark consumer to connect...')
    conn, addr = server_socket.accept()
    print(f'[INFO] Client connected: {addr}')

    # this grabs HTML info for the live map feed
    ## https://www.w3schools.com/python/module_requests.asp 
    session = requests.Session()
    session.headers.update({'User-Agent': 'ISS-Tracker'})

    start_time = datetime.now()
    end_time = start_time + timedelta(seconds=RUN_DURATION)

    retry_delay = INTERVAL

    while datetime.now() < end_time:
        try:
            response = session.get(ISS_API, timeout=10)
            if response.status_code == 200: # 200 means success
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
        ## had to be added in because the NASA API timesout on me 
        time.sleep(retry_delay)
        retry_delay = min(retry_delay * 1.2, MAX_RETRY_DELAY) # can be adjusted at top of script

    print('[INFO] 1 hour complete. Shutting down server.')
    conn.close()
    server_socket.close()

if __name__ == '__main__': # this gets things rolling, rolling, rolling 
    start_iss_server()
