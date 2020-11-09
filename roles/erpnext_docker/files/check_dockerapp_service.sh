#!/bin/bash
docker inspect  --format='{{.Name}} status {{.State.Status}}' $(docker ps -aq) |cut -b1 --complement
rm $0