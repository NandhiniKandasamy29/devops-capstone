#!/bin/bash

docker pull nandhini209/final-devops-app

docker stop react-app || true

docker rm react-app || true

docker run -d -p 80:80 --name react-app nandhini209/final-devops-app