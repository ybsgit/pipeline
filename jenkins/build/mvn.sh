#!/bin/sh

echo "******************Buildind jar ++++++++++++++++++"
WORKSPACE="/root/jenkins_home/workspace/pipeline-docker"
echo $WORKSPACE
docker run --rm -v $WORKSPACE/simple-java-maven-app:/app -v /root/.m2:/root/.m2/ -w /app maven:3-alpine "$@"
