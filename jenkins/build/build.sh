#!/bin/sh

cp -f simple-java-maven-app/target/*.jar jenkins/build/
echo "building docker image"

cd jenkins/build && docker-compose -f docker-compose-build.yaml build --no-cache
