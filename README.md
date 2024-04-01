## CREATE DEPLOYMENT
```
kubectl create deployment nginx --image=nginx --replicas 2
```

## EXPOSE DEPLOYMENT 
```
kubectl expose deployment nginx --port 80 type ClusterIP
```

## CREATE CLOUDFLARE API TOKEN
| Permission type | Permission                | Access level |
| --------------- | ------------------------- | ------------ |
| Account         | Cloudflare Tunnel         | Edit         |
| Account         | Access: Apps and Policies | Edit         |
| Zone            | DNS                       | Edit         |
