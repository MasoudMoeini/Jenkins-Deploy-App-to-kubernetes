# Set UP Kubernetes Deployment
```
kubectl apply -k ./
```
Testing mongo db image
```
docker run -d -p 27017:27017 --name mongodb -e MYDB_ROOT_PASSWORD=mongodb-pass mongo
```
# Clean up resources
```
kubectl delete -k ./
```