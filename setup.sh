#!/bin/bash

# read .envs
export $(cat .env | xargs )
echo 'environemnt vars exported'
echo $(printenv | grep MONGO)
# created needed networks
docker network create web
docker network create db

# change acme permissions (git doesn't save this one?)
sudo chmod 600 acme.json
