# homelab-platform

A lightweight homelab platform for running shared infrastructure services on a single machine.

### What this provides

- [Observability](observability/README.md) stack with Prometheus, Grafana, Node Exporter, and Zipkin.
- [Data](data/README.md) (MySQL, Redis)
- [Management](management/portainer/README.md) (Portainer)
- [Ingress](ingress/README.md) (Nginx)

### Repository structure

```text
homelab-platform/
├── data/             # reserved for data services
│   ├── mysql/
│   └── redis/
│
├── ingress/          # reverse proxy and TLS
│   └── nginx/
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
