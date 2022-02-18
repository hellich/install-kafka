#!/usr/bin/sh

if [ $# -ne 2 ]
then
echo "No arguments supplied"
else

#hostname=ec2-13-38-120-177.eu-west-3.compute.amazonaws.com
hostname=$1

#broker_id=1
broker_id=$2

#zookeeper_server=ec2-13-37-105-220.eu-west-3.compute.amazonaws.com
zookeeper_server=$3

cd /SERVICE/kafka/kafka_2.12-2.4.1

sudo sed -i "s/broker.id=0/broker.id=${broker_id}/g" /SERVICE/kafka/kafka_2.12-2.4.1/config/server.properties
sudo sed -i 's/#listeners=PLAINTEXT:\/\/:9092/listeners=PLAINTEXT:\/\/0.0.0.0:9092/g' /SERVICE/kafka/kafka_2.12-2.4.1/config/server.properties
sudo sed -i "s/#advertised.listeners=PLAINTEXT:\/\/your.host.name:9092/advertised.listeners=PLAINTEXT:\/\/${hostname}:9092/g" /SERVICE/kafka/kafka_2.12-2.4.1/config/server.properties
sudo sed -i "s/zookeeper.connect=localhost:2181/zookeeper.connect=${zookeeper_server}:2181/g" /SERVICE/kafka/kafka_2.12-2.4.1/config/server.properties
sudo sed -i "s/log.retention.hours=168/log.retention.hours=48/g" /SERVICE/kafka/kafka_2.12-2.4.1/config/server.properties

#sudo nohup /SERVICE/kafka/kafka_2.12-2.4.1/bin/zookeeper-server-start.sh /SERVICE/kafka/kafka_2.12-2.4.1/config/zookeeper.properties &
#sleep 10

sudo nohup /SERVICE/kafka/kafka_2.12-2.4.1/bin/kafka-server-start.sh /SERVICE/kafka/kafka_2.12-2.4.1/config/server.properties &
fi
