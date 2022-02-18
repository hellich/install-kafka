if [ $# -eq 0 ]
then
echo "No arguments supplied"
else
hostname=$1

sudo cd /SERVICE/kafka/kafka_2.12-2.4.1
sudo sed -i 's/xxx/xxx/g' config/server.properties
sudo nohup bin/zookeeper-server-start.sh config/zookeeper.properties &
sleep 10
sudo nohup bin/kafka-server-start.sh config/server.properties &
fi
