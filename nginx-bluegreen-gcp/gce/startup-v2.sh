#!/bin/bash
set -e

apt-get update -y
apt-get install -y docker.io
systemctl enable docker
systemctl start docker

docker rm -f nginx-app || true
docker run -d --name nginx-app --restart=always -p 80:80 2823/nginx-app:v2
