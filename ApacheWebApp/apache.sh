#!/bin/bash

kubectl apply -f apache-namespace.yml
kubectl config set-context --current --namespace=apache
kubectl apply -f apache-deployment.yml -f apache-service.yml
# kubectl apply -f apache-hpa.yml
kubectl apply -f apache-vpa.yml
# kubectl port-forward service/apache-svc 100:80 --address=0.0.0.0