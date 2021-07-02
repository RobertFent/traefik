#!/bin/bash

# read .envs
export $(cat .env | xargs )
echo 'environemnt vars exported'
echo $(printenv | grep MONGO)
# created needed networks
docker network create web
docker network create db