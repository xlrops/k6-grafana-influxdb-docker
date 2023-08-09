#!/bin/bash

# Init Grafana and preconfigure data source to be influxdb
/run.sh &

sleep 15

# curl -s -X POST \
#     -H "Content-Type: application/json" \
#     -d '{"name": "myinfluxdb", "type": "influxdb", "access": "proxy", "url": "http://influxdb:8086", "database": "k6", "isDefault": true}' \
#     http://admin:admin@localhost:3000/api/datasources

# kill -SIGINT %%
