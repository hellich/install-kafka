hostname=$1
cd /SERVICE/kafka/kafka_2.12-2.4.1
sed -i 's/xxx/xxx/g' config/server.properties
nohup bin/zookeeper-server-start.sh config/zookeeper.properties &
sleep 10
nohup bin/kafka-server-start.sh config/server.properties &
