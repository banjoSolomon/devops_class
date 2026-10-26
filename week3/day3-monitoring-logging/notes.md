# Day 3 - Monitoring, Logging & Alerting

## Why Monitoring Matters
You can't fix what you can't see. Monitoring answers:
- Is my app running?
- Is it slow?
- Are there errors?
- Is the server out of memory/disk?
- What happened before the outage?

## The Three Pillars of Observability
```
Metrics  → numbers over time (CPU %, request rate, error rate)
Logs     → text records of events ("Error 500 at /api/users")
Traces   → a request's journey through multiple services
```

## Monitoring Stack (most common in DevOps)
```
App → exposes /metrics → Prometheus scrapes → Grafana visualizes
App → writes logs     → Loki collects      → Grafana queries
App → sends spans     → Jaeger/Tempo       → Grafana traces
```

## Prometheus
- Pulls metrics from targets (scraping model)
- Stores time-series data
- Query language: **PromQL**
- Alerting via Alertmanager

```yaml
# prometheus.yml scrape config
scrape_configs:
  - job_name: "devops-app"
    static_configs:
      - targets: ["app:5000"]
    scrape_interval: 15s
```

## Key PromQL Queries
```promql
# HTTP request rate (per second, 5 min window)
rate(http_requests_total[5m])

# Error rate
rate(http_requests_total{status=~"5.."}[5m])

# 95th percentile response time
histogram_quantile(0.95, rate(http_request_duration_seconds_bucket[5m]))

# CPU usage
100 - (avg by(instance) (rate(node_cpu_seconds_total{mode="idle"}[5m])) * 100)

# Memory usage %
(node_memory_MemTotal_bytes - node_memory_MemAvailable_bytes) / node_memory_MemTotal_bytes * 100
```

## Grafana
- Dashboards for visualizing Prometheus metrics
- Supports many data sources (Prometheus, Loki, CloudWatch, etc.)
- Alerting built in
- Import community dashboards from grafana.com/dashboards

## Alerting Best Practices
- Alert on symptoms, not causes (slow response, not high CPU)
- Set realistic thresholds (not too noisy)
- Include runbook links in alert messages
- Use severity levels: critical, warning, info

## ELK Stack (alternative logging)
- **Elasticsearch**: stores and indexes logs
- **Logstash** / **Filebeat**: collect and ship logs
- **Kibana**: UI for searching logs

## Hands-on Lab
```bash
# Start the full monitoring stack with Docker Compose
docker compose -f monitoring/docker-compose.monitoring.yml up -d

# Access:
# Grafana:    http://localhost:3000  (admin/admin)
# Prometheus: http://localhost:9090
```
