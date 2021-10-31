#!/bin/sh

echo "******************Buildind jar ++++++++++++++++++"
WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker
docker run --rm -v $WORKSPACE/simple-java-maven-app:/app -v /root/.m2:/root/.m2/ -w /app maven:3-alpine "$@"
