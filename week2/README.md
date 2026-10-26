# Week 2 - Containers & Orchestration

## Goal
Learn how to package applications into containers and manage them at scale.
By the end of this week, students can build Docker images, compose multi-service
stacks, and deploy applications to Kubernetes.

## Schedule

| Day | Topic | Key Outcome |
|-----|-------|-------------|
| Day 1 | Docker Intro | Run containers, understand images |
| Day 2 | Dockerfiles & Images | Build custom images, best practices |
| Day 3 | Docker Compose | Run multi-container stacks locally |
| Day 4 | Kubernetes Intro | Deploy and scale apps on K8s |
| Day 5 | Project | Full containerize-and-deploy workflow |

## Folder Structure
```
week2/
├── day1-docker-intro/          # Docker concepts and basic commands
├── day2-dockerfile-images/     # Writing Dockerfiles + sample Flask app
│   └── app/                    # Flask app with Dockerfile
├── day3-docker-compose/        # Multi-service stack with Compose
│   └── nginx/                  # Nginx reverse proxy config
├── day4-kubernetes-intro/      # K8s architecture and YAML manifests
│   └── k8s/                    # deployment, service, configmap, secret
└── day5-project/               # End-of-week project
```

## Tools Needed
- Docker Desktop: https://www.docker.com/products/docker-desktop
- kubectl: https://kubernetes.io/docs/tasks/tools/
- Minikube: https://minikube.sigs.k8s.io/docs/start/
  OR enable Kubernetes in Docker Desktop settings
- Docker Hub account: https://hub.docker.com

## Learning Objectives
By end of Week 2, students will be able to:
- [ ] Explain the difference between VMs and containers
- [ ] Write a Dockerfile with best practices (non-root, layer caching)
- [ ] Build, tag, and push a Docker image to a registry
- [ ] Write a `docker-compose.yml` for a multi-service app
- [ ] Explain the Kubernetes control plane and node architecture
- [ ] Write K8s Deployment, Service, ConfigMap, and Secret manifests
- [ ] Deploy, scale, and update an app on Kubernetes
