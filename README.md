
# K6 Grafana InfluxDB In Docker

This will allow you to run your K6 scenarios in docker and view the result in Grafana. There are some example scanarios in the `./scenarios` directory.

## Deployment

To deploy this project run

```bash
  git clone https://github.com/xlrops/k6-grafana-influxdb-docker.git
  cd ./k6-grafana-influxdb-docker
  docker-compose up --build --force-recreate -d influxdb grafana
  http://localhost:3000/dashboards
```
## Deployment

To run the k6 scenarios run the following

```bash
 docker-compose run -v $PWD/scenarios:/scenarios k6 run --vus 1 /scenarios/scenario_01.js
 docker-compose run -v $PWD/scenarios:/scenarios k6 run --vus 50 -i 50 /scenarios/ scenario_01.js
 docker-compose run -v $PWD/scenarios:/scenarios k6 run --vus 1 -i 1 /scenarios/scenario_all.js
```
Then view the results in the Grafana dashboard at : http://localhost:3000/dashboards/f/k6tests/k6-tests

## Clean-up

To clean-up this project run

```bash
  ./scripts/delete-test-suite.sh  
```
