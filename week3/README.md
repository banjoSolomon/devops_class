# Week 3 - CI/CD, IaC, Security & Monitoring

## Goal
Bring everything together into a production-grade DevOps pipeline.
By the end of this week, students can build a fully automated pipeline
from code commit to running in Kubernetes, with monitoring and security.

## Schedule

| Day | Topic | Key Outcome |
|-----|-------|-------------|
| Day 1 | CI/CD Pipelines | Build automated GitHub Actions pipelines |
| Day 2 | Infrastructure as Code | Provision infra with Terraform + Ansible |
| Day 3 | Monitoring & Logging | Set up Prometheus, Grafana, and alerting |
| Day 4 | DevSecOps | Security scanning integrated into pipelines |
| Day 5 | Final Capstone Project | Full end-to-end DevOps pipeline |

## Folder Structure
```
week3/
├── day1-cicd-pipelines/            # CI/CD theory + GitHub Actions YAML
│   └── github-actions/             # ci.yml and cd.yml workflows
├── day2-infrastructure-as-code/    # IaC theory
│   ├── terraform/                  # main.tf, variables.tf, outputs.tf
│   └── ansible/                    # playbook.yml, inventory.ini
├── day3-monitoring-logging/        # Monitoring theory
│   └── monitoring/                 # Full Prometheus + Grafana stack
│       ├── prometheus/             # prometheus.yml + alert rules
│       └── alertmanager/           # alertmanager.yml
├── day4-security-devSecOps/        # DevSecOps theory
│   └── github-actions/             # security-scan.yml workflow
└── day5-final-project/             # Capstone project
    └── starter-app/                # Flask app with metrics + tests
```

## Tools Needed
- GitHub account with Actions enabled
- Docker Hub account
- Terraform: https://developer.hashicorp.com/terraform/install
- Ansible: `pip install ansible`
- Minikube or access to a K8s cluster
- Docker Desktop

## Learning Objectives
By end of Week 3, students will be able to:
- [ ] Build a CI/CD pipeline with GitHub Actions
- [ ] Explain the difference between CI, CD (delivery), and CD (deployment)
- [ ] Write Terraform code to provision cloud infrastructure
- [ ] Write an Ansible playbook to configure a server
- [ ] Set up Prometheus + Grafana monitoring
- [ ] Write PromQL queries and alert rules
- [ ] Integrate security scanning (Trivy, Semgrep, gitleaks) into CI
- [ ] Deliver a complete end-to-end DevOps pipeline
