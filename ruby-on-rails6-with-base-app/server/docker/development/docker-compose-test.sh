#!/bin/bash
docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)

yes | docker system prune --volumes

docker rmi $(docker images -q) --force

sudo rm -rf /home/vagrant/DockerComposeTemplate/ruby-on-rails6-with-base-app/tmp/
sudo rm -rf /home/vagrant/DockerComposeTemplate/ruby-on-rails6-with-base-app/storage/
sudo rm -rf /home/vagrant/DockerComposeTemplate/ruby-on-rails6-with-base-app/public/assets
sudo rm -rf /home/vagrant/DockerComposeTemplate/ruby-on-rails6-with-base-app/node_modules/

docker-compose up -d --build
# http://localhost:3000/