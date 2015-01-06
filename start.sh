#!/usr/bin/env bash
HBASE_ROOT_LOGGER=WARN,console HBASE_SECURITY_LOGGER=WARN,console /usr/local/hbase/bin/start-hbase.sh
tail -f /usr/local/hbase/logs/*.log
