# Monitoring Stack

A minimal monitoring stack using Prometheus, Grafana, Node Exporter, and Zipkin. Easy to set up and operate,
providing monitoring and tracing for deployment environments.

### Key Objectives

- Monitor server health and availability
- Collect system resource metrics (CPU, memory, disk, network)
- Provide time‑series visualization through dashboards
- Enable distributed tracing for application requests

### Components

- **Prometheus**
    - Collects and stores metrics
    - Scrapes:
        - Prometheus self‑metrics (`/metrics`)
        - Node Exporter (host metrics)

- **Node Exporter**
    - Exposes host-level metrics:
        - CPU utilization and load
        - Memory usage and pressure
        - Disk I/O and capacity
        - Network throughput and errors
        - Load average

- **Grafana**
    - Provides visualization and dashboards
    - Automatic setup:
        - Prometheus datasource
        - Node Exporter dashboards
    - No manual configuration required

- **Zipkin**
    - Collects and visualizes distributed traces
    - UI for viewing request timelines and dependencies

All components run as Docker containers and communicate over Docker’s internal network.

### Overview

```text
+-------------------+         +-------------------+
|   Node Exporter   |         |      Zipkin       |
|  (Host Metrics)   |         |   (Tracing UI)    |
|  :9100            |         |  :9411            |
+---------+---------+         +---------+---------+
          |                             ^
          |  scrape                     | traces
          |                             |
+---------v---------+                   |
|    Prometheus     |                   |
|  (Metrics Store)  |                   |
|  :9090            |                   |
+---------+---------+                   |
          |                             |
          |  query                      |
          |                             |
+---------v---------+                   |
|     Grafana       |                   |
|  (Dashboards)     |                   |
|  :3000            |                   |
+-------------------+                   |
                                        |
                                  (Instrumented
                                   Applications)
```

### Getting Started

```bash
docker compose up -d
```

Access the services:

```text
Grafana    http://localhost:3000
Prometheus http://localhost:9090
Node Exp   http://localhost:9100/metrics
Zipkin     http://localhost:9411
```

Grafana default credentials:

```text
user: admin
pass: admin
```
