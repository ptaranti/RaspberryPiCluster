# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Set Hive and Hadoop environment variables here. These variables can be used
# to control the execution of Hive. It should be used by admins to configure
# the Hive installation (so that users do not have to set environment variables
# or set command line parameters to get correct behavior).
#
# The hive service being invoked (CLI etc.) is available via the environment
# variable SERVICE


# Hive Client memory usage can be an issue if a large number of clients
# are running at the same time. The flags below have been useful in 
# reducing memory usage:
#




######  hadoop 

export HADOOP_HOME=/opt/hadoop
export HIVE_HOME=/opt/hive
export HIVE_CONF_DIR=$HIVE_HOME/conf

#  export HADOOP_USER_CLASSPATH_FIRST=true

# Folder containing extra libraries required for hive compilation/execution can be controlled by:
#echo $HIVE_AUX_JARS_PATH
#export HIVE_AUX_JARS_PATH="/home/hduser/postgresql-8.4-703.jdbc4.jar
#export HIVE_AUX_JARS_PATH=/home/hduser/mysql-connector-java-5.1.34/mysql-connector-java-5.1.34-bin.jar