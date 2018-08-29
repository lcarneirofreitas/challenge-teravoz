#!/bin/bash


apt-get update && \
apt-get install -y curl && \
curl -fsSL get.docker.com | bash && \
service docker restart && \
curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose && \
chmod +x /usr/local/bin/docker-compose && \

cd /vagrant && \
#docker build -t webhook . && \
#docker run -d --network="host" -p 5000:5000 --cpus 0.5 --memory 100m --name webhook webhook && \
docker-compose up -d && \
docker ps
