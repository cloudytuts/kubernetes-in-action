## Deploying MongoDB
Apply the manifests in the following order:
1. `mongodb-secret.yaml`
1. `mongodb-pvc.yaml`
1. `mongodb-deployment.yaml`
1. `mongodb-service.yaml`

## Connect to Mongo
### Interactive Container Shell
```shell
kubectl exec -it <pod-name> /bin/bash
```

```shell
mongo -u $MONGO_INITDB_ROOT_USERNAME -p $MONGO_INITDB_ROOT_PASSWORD
```

### Port-Forward
```shell
kubectl port-foward svc/mongodb 27017 &
```

```shell
mongo -u <root-username> -u <root-password>
```