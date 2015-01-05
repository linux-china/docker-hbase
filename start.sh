#!/usr/bin/env bash
/usr/local/hbase/bin/start-hbase.sh
tail -f /usr/local/hbase/logs/*.log
