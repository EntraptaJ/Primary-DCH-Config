docker-compose exec Metricbeat metricbeat setup -e
docker-compose exec Heartbeat heartbeat setup -e
docker-compose exec Filebeat filebeat setup -e