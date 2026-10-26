# Day 2 - Infrastructure as Code (IaC)

## What is IaC?
Managing and provisioning infrastructure through code/config files
instead of clicking around in a UI.

**Without IaC**: Click in AWS Console → manual, error-prone, not repeatable
**With IaC**: Write code → run it → infrastructure is created the same way every time

## Benefits
- Version controlled (Git history for your infra)
- Repeatable and consistent
- Reviewable (PR for infra changes)
- Automated (no manual clicks)
- Disaster recovery (rebuild from code)

## IaC Tools
| Tool | Type | Cloud |
|------|------|-------|
| **Terraform** | Declarative | Any (AWS, Azure, GCP, etc.) |
| **Pulumi** | Imperative (real code) | Any |
| **AWS CloudFormation** | Declarative | AWS only |
| **Azure Bicep** | Declarative | Azure only |
| **Ansible** | Configuration mgmt | Any (agentless) |

## Terraform Core Concepts
```
Provider  → connects to a cloud (AWS, GCP, Azure)
Resource  → a piece of infra (EC2 instance, S3 bucket, VPC)
Variable  → input parameters
Output    → values to display after apply
State     → tracks what exists (terraform.tfstate)
Module    → reusable block of resources
```

## Terraform Workflow
```bash
terraform init      # download providers
terraform plan      # preview changes (dry run)
terraform apply     # create/update infra
terraform destroy   # tear down infra
terraform fmt       # format code
terraform validate  # check for syntax errors
```

## Ansible Core Concepts
```
Inventory   → list of target servers
Playbook    → YAML file defining tasks
Task        → a single operation (install package, copy file)
Role        → reusable group of tasks
Module      → built-in functions (apt, yum, copy, service, etc.)
Handler     → runs only when notified (e.g. restart nginx)
```

## Hands-on Lab
1. Install Terraform: https://developer.hashicorp.com/terraform/install
2. Run the sample Terraform config to see `plan` output
3. Run the Ansible playbook against a local VM or Docker container
