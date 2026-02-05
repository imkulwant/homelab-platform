# homelab-platform

A lightweight homelab platform for running shared infrastructure services on a single machine.

### What this provides

- [Observability](observability/README.md) stack with Prometheus, Grafana, Node Exporter, and Zipkin.
- Data services (MySQL, Redis)

### Repository structure

```text
homelab-platform/
├── observability/    # monitoring & tracing stack
│   ├── prometheus/
│   ├── grafana/
│   └── zipkin/
│
└── data/             # reserved for data services
    ├── mysql/
    ├── redis/
    └── backups/
```
