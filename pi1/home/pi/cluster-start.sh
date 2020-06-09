#!/bin/sh

echo zookeeper pi1
ssh pi1 '/opt/zookeeper/bin/zkServer.sh start > /dev/null 2>&1 &'
echo zookeeper pi2
ssh pi2 '/opt/zookeeper/bin/zkServer.sh start > /dev/null 2>&1 &'
echo zookeeper pi3
ssh pi3 '/opt/zookeeper/bin/zkServer.sh start > /dev/null 2>&1 &'

echo kafka pi1
ssh pi1 '/opt/kafka/bin/kafka-server-start.sh -daemon /opt/kafka/config/server.properties > /dev/null 2>&1 &'
echo kafka pi2
ssh pi2 '/opt/kafka/bin/kafka-server-start.sh -daemon /opt/kafka/config/server.properties > /dev/null 2>&1 &'
echo kafka pi3
ssh pi3 '/opt/kafka/bin/kafka-server-start.sh -daemon /opt/kafka/config/server.properties > /dev/null 2>&1 &'

echo start hadoop cluster
start-dfs.sh
echo start yarn
start-yarn.sh

echo hive metastore
ssh pi2 '/opt/hive/bin/hive --service metastore > /dev/null 2>&1 &'
echo hive hiveserver2
ssh pi1 '/opt/hive/bin/hive --service hiveserver2 > /dev/null 2>&1 &'

echo 'good to start!!!!!!!!'
