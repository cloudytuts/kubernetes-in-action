# README
## Order of Operations
The manifests in this directory should be applied in the following order:
1. wordpress-pvc.yaml
1. wordpress-configmap.yaml
1. wordpress-deployment.yaml
1. wordpress-service.yaml
1. wordpress-ingress.yaml

## Ingress
The `ingress` resource requires an **Ingress Controller** to be deployed to your Kubernetes cluster.