# Day 3 - Docker Compose: Multi-Container Apps

## Why Docker Compose?
Running apps in production usually means multiple services:
- Web server (nginx)
- App server (Flask / Node.js)
- Database (PostgreSQL / MySQL)
- Cache (Redis)

Managing each with `docker run` is painful. Docker Compose lets you
define all services in one `docker-compose.yml` file and manage them together.

## Key Concepts
- **Service**: A container definition
- **Network**: Compose creates a default network — services talk by name
- **Volume**: Persistent data storage
- **Environment**: Inject config without hardcoding

## Core Commands
```bash
docker compose up           # start all services (foreground)
docker compose up -d        # start detached
docker compose down         # stop and remove containers
docker compose down -v      # also remove volumes
docker compose ps           # list running services
docker compose logs         # all logs
docker compose logs app     # logs for one service
docker compose exec app sh  # shell into a service
docker compose build        # rebuild images
docker compose restart app  # restart one service
```

## docker-compose.yml Structure
```yaml
version: "3.9"

services:
  service-name:
    image: or build:
    ports:
    environment:
    volumes:
    depends_on:
    networks:

volumes:
  volume-name:

networks:
  network-name:
```

## Hands-on Lab
1. Run the sample app with `docker compose up -d`
2. Visit http://localhost:8080
3. Check database connection with `docker compose exec app sh`
4. Stop everything with `docker compose down`
