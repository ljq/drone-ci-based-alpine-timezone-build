#!/bin/bash
# Add Support for Asian time zones based on a mirror built by the Drone-CI of the official Alpine OS release

echo "drone-server alpine add timezone .\n"
docker build --target drone-server -t drone/drone:timezone-asia --force-rm .

echo "drone-server alpine add timezone .\n"
docker build --target drone-agent -t drone/agent:timezone-asia --force-rm .

echo "Dockerfile Multi Stage Finished. \n"

echo "Docker Images List:"
docker images -a

exit
