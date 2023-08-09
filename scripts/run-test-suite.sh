#!/bin/bash

docker-compose up --build -d influxdb grafana
sleep 30
docker-compose run -v $PWD/scenarios:/scenarios k6 run --vus 1 /scenarios/scenario_01.js
docker-compose run -v $PWD/scenarios:/scenarios k6 run --vus 50 -i 50 /scenarios/scenario_01.js
docker-compose run -v $PWD/scenarios:/scenarios k6 run --vus 1 -i 1 /scenarios/scenario_all.js