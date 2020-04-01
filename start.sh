#!/bin/bash

curl https://raw.githubusercontent.com/marcoippel/playwithdocker-course/master/pwd-docker-compose.yml --output docker-compose.yaml
docker-compose up -d
