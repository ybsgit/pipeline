#!/bin/bash

echo mavenproj > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
scp -i /var/jenkins_home/prod /tmp/.auth root@10.182.0.25:/tmp/.auth
scp -i /var/jenkins_home/prod ./jenkins/deploy/publish.sh root@10.182.0.25:/tmp/publish.sh
ssh -i /var/jenkins_home/prod root@10.182.0.25 "bash /tmp/publish.sh"
