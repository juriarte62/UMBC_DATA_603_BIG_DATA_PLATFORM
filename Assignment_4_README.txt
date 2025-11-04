Assignment_4_README

To get the NASA ISS Live map working
1) Have all your java, hadoop, and paths properly set up on your computer.
-- Refer to the script on how to store the paths
2) Have multiple bash terminals open (at least 3)
3) run the scripts in this order in the same directory
-- (1) first run iss_socket_server.py (the producer in the streaming cycle)
-- (2) then run the iss_spark_visualizer.py (the consumer in the streaming cycle)
-- (3) Your default browser will open up the HTML file and you can see it live streaming
---------- sometimes the things doesn't reload properly
---------- manually hit the refresh button on the browser and it should work. 