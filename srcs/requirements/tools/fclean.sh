#!/bin/sh

sudo docker kill $(sudo docker ps -qa) 2>/dev/null
sudo docker rm $(sudo docker ps -qa) 2>/dev/null
sudo docker rmi -f $(sudo docker images -qa) 2>/dev/null
sudo docker volume rm $(sudo docker volume ls -q) 2>/dev/null
sudo docker network rm $(sudo docker network ls -q) 2>/dev/null
sudo docker system prune -a --volume 2>/dev/null
sudo docker system prune -a --force 2>/dev/null
sudo rm -rf /home/hdelmas/data 2>/dev/null