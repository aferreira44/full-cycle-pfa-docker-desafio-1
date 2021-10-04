#!/bin/bash

cd ./mysql && docker build -t aferreira44/pfa-mysql . && cd ..
cd ./node && docker build -t aferreira44/pfa-node . && cd ..
cd ./nginx && docker build -t aferreira44/pfa-nginx . && cd ..