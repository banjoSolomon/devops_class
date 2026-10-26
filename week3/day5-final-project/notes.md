# Day 5 - FINAL CAPSTONE PROJECT

## "DevOps Pipeline: End to End"

### Overview
This is the final project for the 3-week DevOps course. Students will build a
**complete DevOps pipeline** for a real web application — from code to production.

This mirrors a real job task: "Set up the DevOps pipeline for our new service."

---

## Architecture Diagram
```
┌─────────────────────────────────────────────────────────┐
│                    DEVELOPER                            │
│  Code → Git commit → Push to GitHub                    │
└───────────────────────┬─────────────────────────────────┘
                        │ triggers
┌───────────────────────▼─────────────────────────────────┐
│                  CI PIPELINE (GitHub Actions)           │
│  Lint → Test → Security Scan → Build Image → Push      │
└───────────────────────┬─────────────────────────────────┘
                        │ on success
┌───────────────────────▼─────────────────────────────────┐
│                  CD PIPELINE                            │
│  Deploy to Kubernetes (rolling update)                  │
└───────────────────────┬─────────────────────────────────┘
                        │
┌───────────────────────▼─────────────────────────────────┐
│              KUBERNETES CLUSTER                         │
│  Deployment (3 replicas) + Service + Ingress            │
└───────────────────────┬─────────────────────────────────┘
                        │
┌───────────────────────▼─────────────────────────────────┐
│                  MONITORING                             │
│  Prometheus scrapes → Grafana dashboard → Alerts        │
└─────────────────────────────────────────────────────────┘
```

---

## Requirements

### Phase 1 — Application (10 pts)
- [ ] A working web application (Python Flask or Node.js)
- [ ] At least 2 API endpoints: `/` and `/health`
- [ ] Unit tests with >60% coverage
- [ ] Exposes Prometheus metrics at `/metrics`

### Phase 2 — Containerization (20 pts)
- [ ] A well-written `Dockerfile` (non-root, multi-stage or alpine base)
- [ ] Image pushed to Docker Hub
- [ ] `docker-compose.yml` that runs app + database locally
- [ ] A `.dockerignore` file

### Phase 3 — CI Pipeline (20 pts)
- [ ] GitHub Actions CI that runs on every push to `main`
- [ ] Pipeline stages: lint → test → build → push image
- [ ] Secrets managed via GitHub Secrets (no hardcoded credentials)
- [ ] Branch protection rule requiring CI to pass before merge

### Phase 4 — Kubernetes (20 pts)
- [ ] `Deployment` YAML with at least 2 replicas
- [ ] `Service` YAML to expose the app
- [ ] `ConfigMap` for environment config
- [ ] `Secret` for sensitive data
- [ ] Liveness and readiness probes configured
- [ ] Resource requests and limits set

### Phase 5 — Monitoring (15 pts)
- [ ] Prometheus and Grafana running via Docker Compose
- [ ] App metrics visible in Prometheus
- [ ] Grafana dashboard showing: request rate, error rate, response time
- [ ] At least one alert rule configured

### Phase 6 — Infrastructure as Code (15 pts)
- [ ] Terraform OR Ansible script to provision/configure a server
- [ ] All infra changes go through version control
- [ ] README with instructions to reproduce the infrastructure

---

## Deliverables
1. **GitHub Repository** — public, with clear README
2. **Docker Hub Image** — image with at least 2 tags (latest + git SHA)
3. **Screenshot**: `kubectl get pods` showing all Running
4. **Screenshot**: Grafana dashboard with live metrics
5. **5-minute demo** — walk through the full pipeline live

---

## Grading Rubric
| Phase | Max Points |
|-------|-----------|
| Application | 10 |
| Containerization | 20 |
| CI Pipeline | 20 |
| Kubernetes | 20 |
| Monitoring | 15 |
| IaC | 15 |
| **Total** | **100** |

---

## Bonus Points (+10)
- Add CD pipeline that auto-deploys to Kubernetes
- Add security scanning (Trivy + Semgrep) to the pipeline
- Use Helm chart instead of raw YAML manifests
- Add HTTPS with a TLS certificate
