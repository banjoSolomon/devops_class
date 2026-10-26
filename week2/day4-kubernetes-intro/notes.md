# Day 4 - Introduction to Kubernetes (K8s)

## Why Kubernetes?
Docker Compose is great for local dev, but in production you need:
- **Auto-healing**: restart crashed containers
- **Scaling**: run 10 copies of your app automatically
- **Load balancing**: spread traffic across instances
- **Rolling updates**: deploy new versions with zero downtime
- **Self-healing**: replace failed nodes

That's what Kubernetes (K8s) does.

## Core Architecture
```
                        CONTROL PLANE
          ┌──────────────────────────────────────┐
          │  API Server  │  Scheduler  │  etcd   │
          │  Controller Manager                  │
          └──────────────────────────────────────┘
                           │
          ┌────────────────┴────────────────┐
          │              NODES              │
          │  ┌─────────┐    ┌─────────┐    │
          │  │  Pod    │    │  Pod    │    │
          │  │ kubelet │    │ kubelet │    │
          └──┴─────────┴────┴─────────┴────┘
```

## Key Objects
| Object | What it does |
|--------|-------------|
| **Pod** | Smallest unit — one or more containers |
| **Deployment** | Manages Pods, handles replicas & updates |
| **Service** | Stable network endpoint to reach Pods |
| **ConfigMap** | Store non-secret config data |
| **Secret** | Store sensitive data (base64 encoded) |
| **Namespace** | Logical isolation within a cluster |
| **Ingress** | HTTP routing rules from outside into Services |
| **PersistentVolume** | Storage that outlives a Pod |

## Essential kubectl Commands
```bash
# Cluster info
kubectl version
kubectl cluster-info
kubectl get nodes

# Pods
kubectl get pods
kubectl get pods -n kube-system           # in a namespace
kubectl describe pod <pod-name>
kubectl logs <pod-name>
kubectl exec -it <pod-name> -- bash
kubectl delete pod <pod-name>

# Deployments
kubectl get deployments
kubectl apply -f deployment.yml
kubectl rollout status deployment/myapp
kubectl rollout undo deployment/myapp
kubectl scale deployment myapp --replicas=5

# Services
kubectl get services
kubectl get svc

# All resources
kubectl get all
kubectl get all -n <namespace>

# Apply any YAML
kubectl apply -f <file.yml>
kubectl delete -f <file.yml>
```

## Local Kubernetes Setup
Options for local learning:
- **Minikube**: `minikube start`
- **Docker Desktop**: Enable Kubernetes in settings
- **kind** (Kubernetes in Docker): `kind create cluster`

## Hands-on Lab
1. Install Minikube or enable K8s in Docker Desktop
2. Deploy the sample app: `kubectl apply -f deployment.yml`
3. Expose it: `kubectl apply -f service.yml`
4. Scale it: `kubectl scale deployment devops-app --replicas=3`
5. Watch pods: `kubectl get pods -w`
