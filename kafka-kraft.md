## This is a other way of Kafka
## for UI - docker run -itd -p 9022:9000 -e KAFKA_BROKERCONNECT=192.168.9.140:9092 -e JVM_OPTS="-Xms32M -Xmx64M" -e SERVER_SERVLET_CONTEXTPATH="/" obsidiandynamics/kafdrop
## docker run -p 8080:8080 -e KAFKA_CLUSTERS_0_NAME=local -e KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=host.docker.internal:9092 -d provectuslabs/kafka-ui:latest
```
apt update
apt install openjdk-11-jdk -y
java -version
wget https://downloads.apache.org/kafka/3.6.1/kafka_2.12-3.6.1.tgz
tar -xvf kafka_2.12-3.6.1.tgz
mv kafka_2.13-3.6.1 /usr/local/kafka
```
## Change the custom directory. 
```
/usr/local/kafka/config/kraft/server.properties 
# A comma separated list of directories under which to store log files
log.dirs=/kafka  # custom directory
```
## add to systemd to start upon post reboot.
```
root@kafka:/myworkspace# cat /etc/systemd/system/kraft.service
[Unit]
Description=Apache Kafka Server
Documentation=http://kafka.apache.org/documentation.html
Requires=zookeeper.service

[Service]
Type=simple
Environment="JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64"
ExecStart=/usr/local/kafka/bin/kafka-server-start.sh /usr/local/kafka/config/kraft/server.properties
ExecStop=/usr/local/kafka/bin/kafka-server-stop.sh

[Install]
WantedBy=multi-user.target

```
