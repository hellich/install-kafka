hostname=$1
sudo su
mkdir -p /SERVICE/kafka
cd /SERVICE/kafka
wget https://miroir.univ-lorraine.fr/apache/kafka/2.4.1/kafka_2.12-2.4.1.tgz
tar -xvf kafka_2.12-2.4.1.tgz
cd /SERVICE/kafka/kafka_2.12-2.4.1
sed -i 's/xxx/xxx/g' config/server.properties
nohup bin/zookeeper-server-start.sh config/zookeeper.properties &
sleep 10
nohup bin/kafka-server-start.sh config/server.properties &
