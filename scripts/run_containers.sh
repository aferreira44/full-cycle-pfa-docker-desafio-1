#!/bin/bash

docker run -d --network pfa-network --name pfa-mysql aferreira44/pfa-mysql
docker run -d --network pfa-network --name pfa-node aferreira44/pfa-node
docker run -d --network pfa-network --name pfa-nginx -p 8080:80 aferreira44/pfa-nginx