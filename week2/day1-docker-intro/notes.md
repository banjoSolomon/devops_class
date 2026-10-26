# Day 1 - Introduction to Docker & Containers

## Why Containers?
- "It works on my machine" problem
- VMs vs Containers (weight, startup time, resource usage)
- Containers share the host OS kernel — they are processes, not machines

## Core Concepts
| Concept | Description |
|---------|-------------|
| Image | Read-only template to create containers (like a class) |
| Container | Running instance of an image (like an object) |
| Dockerfile | Instructions to build an image |
| Registry | Storage for images (Docker Hub, ECR, GCR) |
| Volume | Persistent storage for containers |
| Network | How containers communicate |

## Docker Architecture
```
Developer → Dockerfile → docker build → Image → docker run → Container
                                          ↑
                                    Docker Hub / Registry
```

## Essential Docker Commands
```bash
# Install check
docker --version
docker info

# Images
docker pull nginx
docker images
docker rmi nginx

# Containers
docker run nginx                          # run (foreground)
docker run -d nginx                       # run detached
docker run -d -p 8080:80 nginx            # map port
docker run -d -p 8080:80 --name webserver nginx
docker ps                                 # running containers
docker ps -a                              # all containers
docker stop webserver
docker start webserver
docker rm webserver
docker logs webserver
docker logs -f webserver                  # follow logs
docker exec -it webserver bash            # shell into container

# System cleanup
docker system prune
docker volume prune
```

## Hands-on Lab
```bash
# Run your first container
docker run hello-world

# Run nginx and visit localhost:8080
docker run -d -p 8080:80 --name mynginx nginx
curl http://localhost:8080

# Check what's inside
docker exec -it mynginx bash
ls /usr/share/nginx/html
exit

# Clean up
docker stop mynginx && docker rm mynginx
```
