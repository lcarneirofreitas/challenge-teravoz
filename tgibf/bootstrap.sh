#!/bin/bash


apt-get update && \
apt-get install -y curl && \
curl -fsSL get.docker.com | bash && \
service docker restart && \

cd /vagrant && \
docker build -t tgibf . && \
docker run -d --network="host" --cpus 0.5 --memory 100m --name tgibf tgibf
docker ps
