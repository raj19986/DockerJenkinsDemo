#!/usr/bin/bash

docker pull jenkins/jenkins
docker run -p 8080:8080  jenkins/jenkins
