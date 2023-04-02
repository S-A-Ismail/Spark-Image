#!/bin/bash

# Start the first process
mnt/spark/spark-3.3.1-bin-hadoop3/bin/spark-class org.apache.spark.deploy.master.Master --ip $SPARK_MASTER_HOST --port $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT >> $SPARK_MASTER_LOG/
  
# Start the second process
export SPARK_HOME=${SPARK_HOME}
export HADOOP_CONF_DIR=${HADOOP_HOME}
/mnt/spark/livy-0.2.0//bin/livy-server start
  
# Wait for any process to exit
wait -n
# Exit with status of process that exited first
exit $?