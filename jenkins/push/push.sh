#!/bin/bash
echo "Pushing image"
IMAGE="mavenproj"
docker login -u web927 -p $PASS

docker tag $IMAGE:$BUILD_TAG web927/$IMAGE:$BUILD_TAG

docker push web927/$IMAGE:$BUILD_TAG
