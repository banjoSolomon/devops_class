# Day 1 - CI/CD Pipelines

## What is CI/CD?

**CI - Continuous Integration**
Developers push code frequently → automated pipeline runs tests and builds.
Goal: catch bugs early, never have a broken main branch.

**CD - Continuous Delivery**
Every successful build is automatically deployable (one-click deploy).

**CD - Continuous Deployment**
Every successful build is automatically deployed to production.
No human approval needed.

```
Code Push → Build → Test → Package → Deploy to Staging → Deploy to Production
   CI   ←──────────────────→        CD Delivery          CD Deployment
```

## Why CI/CD Matters
- No more "integration hell" at the end of a sprint
- Faster feedback loop for developers
- Consistent, repeatable deployments
- Reduces human error in deployments

## Popular CI/CD Tools
| Tool | Type | Notes |
|------|------|-------|
| GitHub Actions | Cloud | Built into GitHub, free tier available |
| GitLab CI | Cloud/Self-hosted | Full DevOps platform |
| Jenkins | Self-hosted | Most flexible, complex setup |
| CircleCI | Cloud | Fast, developer-friendly |
| ArgoCD | K8s-native | GitOps for Kubernetes |
| Tekton | K8s-native | Cloud-native pipelines |

## CI/CD Pipeline Stages (typical)
```
1. Trigger     - push to branch, PR, tag
2. Checkout    - clone the repo
3. Install     - install dependencies
4. Lint        - code style checks
5. Test        - unit tests, integration tests
6. Build       - compile / build Docker image
7. Scan        - security scan (Trivy, Snyk)
8. Push        - push image to registry
9. Deploy      - apply to staging/prod
10. Notify     - Slack/email on success/failure
```

## Key Concepts
- **Pipeline as Code**: define pipelines in YAML files in the repo
- **Artifact**: output of the build (Docker image, JAR, ZIP)
- **Environment**: staging, production, etc.
- **Secrets**: never hardcode — use the CI system's secret store
- **Branch protection**: require CI to pass before merging
