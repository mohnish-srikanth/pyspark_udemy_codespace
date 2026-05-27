# pyspark_udemy_codespace
Codespace for pyspark udemy course I am doing

Use docker pull jupyter/pyspark-notebook:latest to pull the image and run that

New spark application for each notebook

Master spark command:
```
from pyspark.sql import SparkSession

spark = SparkSession.builder \
    .appName("SparkCourse") \
    .master("local[*]") \
    .config("spark.sql.warehouse.dir", "/home/jovyan/work/setup/spark-warehouse") \
    .config("spark.hadoop.javax.jdo.option.ConnectionURL",
            "jdbc:derby:/home/jovyan/work/metastore_db;create=true") \
    .config("spark.hadoop.javax.jdo.option.ConnectionDriverName",
            "org.apache.derby.jdbc.EmbeddedDriver") \
    .enableHiveSupport() \
    .getOrCreate()

spark.sparkContext.setLogLevel("ERROR")
print("Spark version:", spark.version)
```

Master Docker Command:
```

```