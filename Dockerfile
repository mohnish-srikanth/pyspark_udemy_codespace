FROM jupyter/pyspark-notebook:spark-3.5.0

# Install Derby for Hive metastore
USER root
RUN apt-get update && apt-get install -y derby-tools

# Copy Derby JAR into Spark
RUN cp /usr/share/java/derby.jar $SPARK_HOME/jars/ && \
    cp /usr/share/java/derbytools.jar $SPARK_HOME/jars/

USER jovyan