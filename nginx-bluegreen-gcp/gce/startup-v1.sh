#!/bin/bash
set -e

apt-get update -y
apt-get install -y docker.io
systemctl enable docker
systemctl start docker

docker rm -f nginx
