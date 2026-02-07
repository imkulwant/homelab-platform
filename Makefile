setup:
	./scripts/install_prerequisites.sh
	./scripts/install_docker.sh
	./scripts/configure_network.sh
	./scripts/configure_firewall.sh

up:
	docker compose -f data/docker-compose.yml up -d
	docker compose -f observability/docker-compose.yml up -d
	docker compose -f management/docker-compose.yml up -d

down:
	docker compose -f observability/docker-compose.yml down
	docker compose -f data/docker-compose.yml down
	docker compose -f management/docker-compose.yml down

status:
	./scripts/verify_platform.sh
