#!/bin/bash
docker-compose down

# docker rmi $(docker images -q) --force

# sudo rm -rf ./workspace

docker-compose up -d --build