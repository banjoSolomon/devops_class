# DevOps Bootcamp — 3-Week Course

A practical, hands-on DevOps course that takes students from zero to a
full production-grade pipeline. Every topic builds on the previous one,
ending with a real capstone project.

---

## Course Structure

```
devops_class/
├── week1/   → Foundations      (Linux, Git, Networking)
├── week2/   → Containers       (Docker, Compose, Kubernetes)
└── week3/   → Pipeline & Cloud (CI/CD, IaC, Monitoring, Security)
```

---

## Week-by-Week Overview

### Week 1 — DevOps Foundations
> *"Before touching any tool, understand the culture and the craft."*

| Day | Topic |
|-----|-------|
| 1 | What is DevOps? Culture, lifecycle, principles |
| 2 | Linux fundamentals — filesystem, commands, shell scripting |
| 3 | Git & version control — branching, PRs, Git workflow |
| 4 | Networking basics — IP, DNS, HTTP, ports, firewalls |
| 5 | Mini project — Git repo + Linux automation scripts |

**What students walk away with:**
A working GitHub repo, bash scripts, and a solid mental model of DevOps.

---

### Week 2 — Containers & Orchestration
> *"Package your app once, run it anywhere."*

| Day | Topic |
|-----|-------|
| 1 | Docker intro — images, containers, basic commands |
| 2 | Dockerfiles — writing, building, best practices |
| 3 | Docker Compose — multi-service stacks (app + db + cache) |
| 4 | Kubernetes — architecture, Pods, Deployments, Services |
| 5 | Project — containerize and deploy a full stack app |

**What students walk away with:**
A Dockerized app pushed to Docker Hub and running on Kubernetes.

---

### Week 3 — Pipelines, Cloud & Production
> *"Automate everything from commit to production."*

| Day | Topic |
|-----|-------|
| 1 | CI/CD pipelines — GitHub Actions, stages, secrets |
| 2 | Infrastructure as Code — Terraform + Ansible |
| 3 | Monitoring & logging — Prometheus, Grafana, alerting |
| 4 | DevSecOps — Trivy, Semgrep, gitleaks in the pipeline |
| 5 | **Capstone project** — full end-to-end DevOps pipeline |

**What students walk away with:**
A complete pipeline: code → CI → Docker → Kubernetes → monitored in Grafana.

---

## Full Curriculum at a Glance

```
WEEK 1                    WEEK 2                    WEEK 3
──────────────────────    ──────────────────────    ──────────────────────
DevOps culture        →   Docker containers     →   GitHub Actions CI/CD
Linux & bash          →   Dockerfiles           →   Terraform / Ansible
Git & GitHub          →   Docker Compose        →   Prometheus & Grafana
Networking            →   Kubernetes (K8s)      →   DevSecOps scanning
Mini project          →   Container project     →   Capstone project
```

---

## Tools Used in This Course

| Category | Tools |
|----------|-------|
| OS / Shell | Linux, Bash |
| Version Control | Git, GitHub |
| Containers | Docker, Docker Compose |
| Orchestration | Kubernetes, kubectl, Minikube |
| CI/CD | GitHub Actions |
| IaC | Terraform, Ansible |
| Monitoring | Prometheus, Grafana, Alertmanager |
| Security | Trivy, Semgrep, gitleaks, pip-audit |
| Cloud | AWS (EC2, S3, Security Groups) |

---

## Prerequisites for Students

- Basic computer literacy
- A laptop with at least 8GB RAM
- Internet access
- Accounts needed (all free):
  - [GitHub](https://github.com)
  - [Docker Hub](https://hub.docker.com)

**No prior DevOps experience required.** Some familiarity with any
programming language is helpful but not mandatory.

---

## How to Use This Repo (For the Instructor)

Each week folder contains:
- `README.md` — weekly schedule and learning objectives
- `dayN-topic/notes.md` — lesson notes, concepts, and commands
- Supporting files — scripts, YAMLs, Dockerfiles, configs

**Suggested flow per day:**
1. Walk through `notes.md` as lecture material (45–60 min)
2. Live demo the commands / files together (30 min)
3. Students complete the hands-on lab at the bottom of notes (45–60 min)
4. Review and Q&A (15 min)

**Day 5 each week** is project day — no new material, students build.

---

## Capstone Project (Week 3, Day 5)

The final project brings every skill together:

```
Git push → GitHub Actions (lint + test + build + scan) → Docker Hub
       → Deploy to Kubernetes → Prometheus metrics → Grafana dashboard
```

Students are graded on all 6 phases and present a live demo.
See `week3/day5-final-project/notes.md` for the full rubric.

---

## Learning Path After This Course

Once students finish, recommend they explore:
- **Helm** — Kubernetes package manager
- **ArgoCD** — GitOps continuous deployment
- **HashiCorp Vault** — secrets management
- **AWS/GCP/Azure** certifications (AWS CCP or SAA)
- **Certified Kubernetes Administrator (CKA)**

---

*Good luck and enjoy teaching! The best DevOps engineers are the ones
who automate themselves out of boring work so they can focus on
interesting problems.*
# devops_class
