#!/bin/bash
# My first script

git clone git@github.com:smartenv-crs4/cmc-auth.git
git clone git@github.com:smartenv-crs4/cmc-user.git
git clone git@github.com:smartenv-crs4/cmc-app.git
git clone git@github.com:smartenv-crs4/cmc-iot.git


cp docker_quick/cmc-auth/default.json cmc-auth/config/default.json
cp docker_quick/cmc-user/default.json cmc-user/config/default.json
cp docker_quick/cmc-app/default.json cmc-app/config/default.json
cp docker_quick/cmc-iot/default.json cmc-iot/config/default.json

cd docker_quick/
docker build -t node_alpine .
cd ..

cd cmc-auth/
docker build -t cmc-auth .
cd ..

cd cmc-user/
docker build -t cmc-user .
cd ..

cd cmc-app/
docker build -t cmc-app .
cd ..

cd cmc-iot/
docker build -t cmc-iot .
cd ..

cd docker_quick/
mkdir data data/db
docker-compose up -d
cd ..

rm -rf cmc-auth
rm -rf cmc-user
rm -rf cmc-app
rm -rf cmc-iot
