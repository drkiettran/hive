# Apache's Hive Sample project

## Start up Hive

```
hdfs dfs -mkdir -p /user/hive/warehouse
hdfs dfs -chmod g+w /user/hive/warehouse
hdfs dfs -mkdir /tmp
hdfs dfs -chmod g+w /tmp
```

## For cisc-525 Spring 2020 class:
```
cd /home/student/cisc_525/cisc-525-util
./start-hadoop.bash
./prepare-hadoop-data.bash
./prepare-hive-data.bash
```

## Runs HiveQL:
```shellscript
hive
```

## compare with Java MR application 
Check out mapreduce repository and run the WordCount application against othello.txt file to see the difference in coding.
