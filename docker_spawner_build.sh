#!/bin/sh
cd `dirname $0`
docker build -t docker_spawner:latest  -f ./dockerfile.spawner .