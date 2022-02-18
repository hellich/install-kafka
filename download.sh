#!/usr/bin/sh

sudo mkdir -p /SERVICE/kafka
cd /SERVICE/kafka
sudo wget https://archive.apache.org/dist/kafka/2.4.1/kafka_2.12-2.4.1.tgz -O /SERVICE/kafka/kafka_2.12-2.4.1.tgz
sudo tar -xvf /SERVICE/kafka/kafka_2.12-2.4.1.tgz
