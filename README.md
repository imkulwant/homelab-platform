# homelab-platform

A lightweight homelab platform for running shared infrastructure services on a single machine.

### What this provides

- [Observability](observability/README.md) stack with Prometheus, Grafana, Node Exporter, and Zipkin.
- [Data](data/README.md) (MySQL, Redis)
- [Management/Portainer](management/portainer/README.md)

### Repository structure

```text
homelab-platform/
├── data/             # reserved for data services
│   ├── mysql/
│   └── redis/
│
├── management/       # platform ops tools
│   └── portainer/
│
├── observability/    # monitoring & tracing stack
│   ├── grafana/
│   └── prometheus/
│
└── scripts/
```
