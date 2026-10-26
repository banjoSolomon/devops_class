# Day 5 - Week 2 Project: Containerize & Deploy

## Project: "Containerized App Stack"

### Goal
Take a real multi-service application, containerize it, and deploy it to Kubernetes.
This is exactly what a DevOps engineer does when onboarding a new service.

### Tasks

#### Part 1 - Docker
1. Write a `Dockerfile` for the provided Flask app
2. Build and run it locally: `docker build -t devops-app:1.0.0 .`
3. Test it: `curl http://localhost:8080`
4. Push image to Docker Hub:
   ```bash
   docker tag devops-app:1.0.0 yourusername/devops-app:1.0.0
   docker push yourusername/devops-app:1.0.0
   ```

#### Part 2 - Docker Compose
1. Write a `docker-compose.yml` that runs:
   - The Flask app
   - PostgreSQL database
   - Redis cache
2. Make them communicate using service names
3. Use a `.env` file for secrets (NOT hardcoded in the compose file)
4. Add a health check for the database

#### Part 3 - Kubernetes
1. Write a `Deployment` YAML for the app (3 replicas)
2. Write a `Service` YAML to expose it
3. Write a `ConfigMap` for app config
4. Deploy to Minikube: `kubectl apply -f k8s/`
5. Verify: `kubectl get pods` — all should be Running
6. Scale up to 5 replicas and observe
7. Trigger a rolling update by changing the image tag

### Deliverables
- Docker image pushed to Docker Hub
- `docker-compose.yml` that works with `docker compose up`
- All K8s YAMLs in a `k8s/` folder
- Screenshot of `kubectl get pods` showing 3+ running pods

### Bonus
- Add resource limits to the K8s Deployment
- Add liveness and readiness probes
- Use a Kubernetes Secret instead of plain env vars for DB password
