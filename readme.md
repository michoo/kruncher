# Kruncher

## Description
This tool is to provide a way to perform tasks on a schedule or on event

## Test it
```shell
docker compose up

# to scale workers
docker compose scale worker=5

# to see logs on specific worker
docker compose logs worker


```

Redis commander: http://localhost:8081/
Celery dashboard: http://localhost:5555/
Prometheus : http://localhost:9090/query
Grafana : http://localhost:3000/ (Nb: default login is admin/admin)

## Configuration of grafana
dashboard: import celery-monitoring-grafana-dashboard.json into grafana. You may have to add prometheus connection (http://prometheus:9090)
alerts: import prometheus-alerts.yaml  
https://flower.readthedocs.io/en/latest/prometheus-integration.html#import-the-celery-monitoring-dashboard-in-grafana


## Some curl commands
```shell
# push a task
curl -X POST -d '{"args":[1,2]}' http://localhost:5555/api/task/async-apply/tasks.add

# list tasks
curl -X GET http://localhost:5555/api/task/async-apply/tasks.add

# get workers
curl -X GET http://localhost:5555/api/workers

# scale

```


## Other

lecture to build helm chart for grafana
https://blog.bajonczak.com/how-to-provisioning-dashboards-in-grafana/
