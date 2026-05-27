@echo off
echo Starting PySpark Docker environment...
docker run -it --rm ^
  -p 8888:8888 ^
  -v D:/pyspark_udemy_codespace:/home/jovyan/work ^
  --name pyspark-container ^
  pyspark-hive
echo Container stopped.
pause