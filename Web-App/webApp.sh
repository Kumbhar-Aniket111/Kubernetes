#!/bin/bash

kubectl apply -f namespace-web.yaml
kubectl config set-context --current --namespace=web
kubectl apply -f persistentVolume.yaml -f persistentVolumeClaim.yaml
kubectl apply -f apacheDeployment.yaml -f apacheService.yaml
kubectl apply -f nginxDeployment.yaml -f nginxService.yaml
kubectl apply -f ingressService.yaml

kubectl port-forward service/ingress-nginx-controller -n ingress-nginx 100:80 --address=0.0.0.0