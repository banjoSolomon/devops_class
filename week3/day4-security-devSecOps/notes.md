# Day 4 - Security in DevOps (DevSecOps)

## What is DevSecOps?
Shifting security left — integrating security checks into every stage
of the DevOps pipeline instead of bolting it on at the end.

```
Old way: Dev → DevOps → [Security audit at the end]
New way: [Security at every step] Dev → CI → Build → Deploy → Monitor
```

## Security at Each Stage

### Code (Developer's machine)
- Use a linter with security rules (Bandit for Python, ESLint security plugin)
- Secret scanning pre-commit hooks (detect-secrets, gitleaks)
- Dependency vulnerability scanning (npm audit, pip-audit, Snyk)

### CI Pipeline
- SAST (Static Application Security Testing): scan code without running it
  - Tools: SonarQube, Semgrep, CodeQL
- Dependency scanning: check for known CVEs in packages
  - Tools: Snyk, OWASP Dependency Check
- Secret scanning: ensure no secrets in commits
  - Tools: truffleHog, gitleaks, GitHub secret scanning

### Container Build
- Scan Docker images for vulnerabilities
  - Tools: **Trivy** (most popular), Grype, Snyk
- Use minimal base images (alpine, distroless)
- Run as non-root user
- Keep base images updated

### Kubernetes / Runtime
- Use Network Policies to restrict pod-to-pod communication
- Use RBAC (Role-Based Access Control)
- Use Pod Security Standards (restrict privileged containers)
- Scan running containers: Falco (runtime threat detection)

### Secrets Management
- Never hardcode secrets in code or Dockerfiles
- Use: HashiCorp Vault, AWS Secrets Manager, K8s Secrets + Sealed Secrets
- Rotate secrets regularly

## The OWASP Top 10 (Web App)
Students should know these vulnerabilities exist:
1. Broken Access Control
2. Cryptographic Failures
3. Injection (SQL, Command)
4. Insecure Design
5. Security Misconfiguration
6. Vulnerable Components
7. Auth Failures
8. Software/Data Integrity Failures
9. Logging & Monitoring Failures
10. SSRF

## Hands-on Lab
```bash
# Scan a Docker image for vulnerabilities
docker run --rm aquasec/trivy image python:3.12

# Scan your own built image
docker run --rm aquasec/trivy image devops-app:1.0.0

# Check Python dependencies for CVEs
pip install pip-audit
pip-audit -r requirements.txt

# Run Semgrep on your code
docker run --rm -v "${PWD}:/src" returntocorp/semgrep semgrep --config=auto /src
```
