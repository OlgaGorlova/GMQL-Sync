#!/bin/sh
#
# GMQL dataset backup
#
# Author: Olga Gorlova
#
# email: olha.horlova@polimi.it
#

cd "$(dirname "$0")"

JAVA_CMD="java -jar ../target/uber-GMQL-Sync-*.jar it.polimi.genomics.GMQLSync.DSBackup $@"
SPARK_CMD="/usr/local/spark/bin/spark-submit --class it.polimi.genomics.GMQLSync.DSBackup --driver-memory 2048m uber-GMQL-Sync-1.0-SNAPSHOT.jar $@"
s=$@
$SPARK_CMD