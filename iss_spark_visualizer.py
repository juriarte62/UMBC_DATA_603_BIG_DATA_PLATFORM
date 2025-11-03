# ============================================================
# ISS LIVE VISUALIZER (Resilient Consumer) — Spark + Folium
# ============================================================

import os
import time
import folium
import webbrowser
from pyspark.sql import SparkSession
from pyspark.sql.functions import from_json, col
from pyspark.sql.types import StructType, StructField, StringType, DoubleType, LongType

# Spark & Hadoop environment variables -- I had to remove all the stuff from the old assignemnt. It didn't work, but I was able to get the JAVA working for our group project
os.environ['JAVA_HOME'] = r'C:\Program Files\Eclipse Adoptium\jdk-17.0.17.10-hotspot'
os.environ['HADOOP_HOME'] = r'C:\hadoop'
os.environ['PATH'] += r';C:\hadoop\bin'

# ============================================================
# 1️⃣ Initialize Spark Session & Schema
# ============================================================
spark = SparkSession.builder.appName('ISS_Live_Tracker_Fixed').getOrCreate()
spark.sparkContext.setLogLevel('ERROR')

schema = StructType([
    StructField('timestamp', LongType()),
    StructField('iss_position', StructType([
        StructField('longitude', StringType()),
        StructField('latitude', StringType())
    ])),
    StructField('message', StringType())
])

# ============================================================
# 2️⃣ Stream from socket
# ============================================================
df_raw = (
    spark.readStream.format('socket')
    .option('host', 'localhost')
    .option('port', 9999)
    .load()
)

df_parsed = df_raw.select(from_json(col('value'), schema).alias('data')).select('data.*')
df_coords = df_parsed.select(
    col('timestamp'),
    col('iss_position.latitude').cast(DoubleType()).alias('latitude'),
    col('iss_position.longitude').cast(DoubleType()).alias('longitude')
)

query = (
    df_coords.writeStream
    .outputMode('append')
    .format('memory')
    .queryName('iss_stream')
    .start()
)

# ============================================================
# 3️⃣ Live Map Visualization Loop
# ============================================================
trail = []
map_path = 'iss_live_map.html'

print('[INFO] Starting ISS live map visualization...')
print('[INFO] Refresh interval: 5 seconds | Duration: 1 hour')
print('[INFO] Press Ctrl+C to stop early')

start_time = time.time()
DURATION = 3600  # 1 hour

while time.time() - start_time < DURATION:
    try:
        data = spark.sql('SELECT * FROM iss_stream ORDER BY timestamp DESC LIMIT 1').collect()
        if data:
            lat, lon = data[0]['latitude'], data[0]['longitude']
            if (lat, lon) not in trail:
                trail.append((lat, lon))
                if len(trail) > 720:  # ~1 hr of 5 sec samples
                    trail.pop(0)

            # Create the live map
            m = folium.Map(location=[lat, lon], zoom_start=3, tiles='CartoDB positron')
            folium.PolyLine(trail, color='red', weight=2.5, opacity=0.8).add_to(m)
            folium.Marker(
                [lat, lon],
                popup=f'🛰️ ISS\nLat: {lat:.2f}, Lon: {lon:.2f}',
                icon=folium.Icon(color='blue', icon='rocket')
            ).add_to(m)

            m.save(map_path)

            # Add auto-refresh meta tag if missing
            with open(map_path, 'r+', encoding='utf-8') as f:
                html = f.read()
                if '<meta http-equiv="refresh"' not in html:
                    html = html.replace(
                        "<head>",
                        '<head>\n<meta http-equiv="refresh" content="5">'
                    )
                    f.seek(0)
                    f.write(html)
                    f.truncate()

            print(f'[UPDATE] ISS position: ({lat:.2f}, {lon:.2f})')

            if not hasattr(webbrowser, 'map_opened'):
                webbrowser.open('file://' + os.path.abspath(map_path))
                webbrowser.map_opened = True

        time.sleep(5)
    except Exception as e:
        print(f'[ERROR] Visualization loop error: {e}')
        time.sleep(5)

print('[INFO] Tracking session ended.')
query.stop()
spark.stop()
