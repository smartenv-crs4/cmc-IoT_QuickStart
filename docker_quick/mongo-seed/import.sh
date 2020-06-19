#!/bin/bash
# My first script

mongoimport --host=mongo:27017 --db=CMCAUTH --collection=microservices --type=json --file=/mongo-seed/microservices.json
