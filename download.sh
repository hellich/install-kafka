#!/usr/bin/sh

sudo kdir -p /SERVICE/kafka
sudo cd /SERVICE/kafka
sudo wget https://archive.apache.org/dist/kafka/2.4.1/kafka_2.12-2.4.1.tgz
sudo tar -xvf kafka_2.12-2.4.1.tgz
