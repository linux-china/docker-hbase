HBase Docker Image
======================================

### Build

docker build -t lancope/hbase:0.98.16.1 .


### usage in docker compose

     hbase:
       image: lancope/hbase:0.98.16.1
       ports:
          - "2181:2181"
          - "60000:60000"
          - "60020:60020"
