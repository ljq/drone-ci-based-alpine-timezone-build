#!/bin/bash
# Add Support for Asian time zones based on a mirror built by the Drone-CI of the official Alpine OS release

echo "drone-server alpine add timezone .\n"
docker build --target drone-server -t drone/drone:timezone-asia --force-rm .

echo "drone-agent alpine add timezone .\n"
docker build --target drone-agent -t drone/agent:timezone-asia --force-rm .

echo "-------- drone plugins ---------"

echo "drone-scp alpine add timezone .\n"
docker build --target drone-scp -t appleboy/drone-scp:timezone-asia --force-rm .

echo "drone-ssh alpine add timezone .\n"
docker build --target drone-ssh -t appleboy/drone-ssh:timezone-asia --force-rm .

echo "drone-email alpine add timezone .\n"
docker build --target drone-email -t drillster/drone-email:timezone-asia --force-rm .

echo "--------- tools docker ---------"

echo "golang:1.14-alpine add timezone .\n"
docker build --target golang-tz -t appleboy/golang:timezone-asia --force-rm .


echo "--------------- images <none> clear  -----------------\n"

docker ps -a|grep "Exited" | awk '{print $1}' | xargs docker stop
docker ps -a|grep "Exited" | awk '{print $1}' | xargs docker rm
docker images|grep none|awk '{print $3}'|xargs docker rmi

echo "---------- Dockerfile Multi Stage Finished. --------\n"

echo "Docker Images List:"
docker images -a

exit
