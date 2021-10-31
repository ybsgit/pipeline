#!/bin/sh

echo "******************Buildind jar ++++++++++++++++++"

docker run --rm -v $PWD/simple-java-maven-app:/app -v /root/.m2:/root/.m2/ -w /app maven:3-alpine "$@"
