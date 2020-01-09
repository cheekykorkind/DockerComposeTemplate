#!/bin/bash
docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)
docker rmi $(docker images -q -f "dangling=true")
docker volume rm $(docker volume ls -qf dangling=true)

docker images -a | grep "061_react-native" | awk '{print $3}' | xargs docker rmi --force

yes | docker network prune
yes | docker volume prune

# sudo rm -rf ./workspace

docker-compose up -d --build