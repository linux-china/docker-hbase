#!/usr/bin/env bash
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
HBASE_ROOT_LOGGER=WARN,console HBASE_SECURITY_LOGGER=WARN,console /usr/local/hbase/bin/start-hbase.sh
tail -f /usr/local/hbase/logs/*.log
