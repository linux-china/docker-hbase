FROM lancope/java:8

RUN wget --quiet -O - http://apache.mirrors.hoobly.com/hbase/stable/hbase-0.98.9-hadoop2-bin.tar.gz | tar --directory /usr/local -xzf -
RUN ln -s /usr/local/hbase-0.98.9-hadoop2 /usr/local/hbase

ADD start.sh /usr/local/hbase/start-tail.sh
ADD hbase-site.xml /usr/local/hbase/conf/

VOLUME ["/var/lib/hbase", "/var/lib/zookeeper"]
EXPOSE 2181 60000 60020

CMD /usr/local/hbase/start-tail.sh
