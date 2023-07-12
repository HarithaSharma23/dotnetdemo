apiVersion: apps/v1
kind: Deployment
metadata:
  name: web-deployment
  labels:
    app: dotnet
spec:
  replicas: 3
  selector:
    matchLabels:
      app: dotnet
  template:
    metadata:
      labels:
        app: dotnet
    spec:
      containers:
      - name: dotnet
        image: nbyreddy/dockerdep-10-app:1.0.0
        ports:
        - containerPort: 80
