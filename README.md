# Spark-Image
Spark Images with Livy and Jupyter configured

As of 5/13/2023 this docker compose brings up a spark2 cluster of 1 master and 2 worker nodes with Livy and Jupyter configured. 

Further plans include setting up a DataLake HDFS with Hive and connecting this cluster with Hive for more effective Big data operations.

This project is a series of projects which when combined later in future would be enabling open source spark notebooks on scaleable K8s connecting to different data sources.

Further upgrades include

1) Moving to spark 3 and Livy with spark 3 integrations.
2) Setting up a data lake on HDFS and also testing S3/ADLS connections
3) Orchestrating spark and spark jobs on scaleable K8s
