#!/bin/bash

# Start the first process
mnt/spark/bin/spark-class org.apache.spark.deploy.master.Master --ip $SPARK_MASTER_HOST --port $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT >> $SPARK_MASTER_LOG/
  
# Start the second process
jupyter notebook --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''
  
# Wait for any process to exit
wait -n
# Exit with status of process that exited first
exit $?