#!/bin/bash

cd ../mysql

docker build -t aferreira44/pfa-mysql .
docker push aferreira44/pfa-mysql

cd ../node

docker build -t aferreira44/pfa-node .
docker push aferreira44/pfa-node

cd ../nginx

docker build -t aferreira44/pfa-nginx .
docker push aferreira44/pfa-nginx
