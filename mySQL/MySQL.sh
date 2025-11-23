#!/bin/bash

kubectl apply -f sqlNamespace.yml
kubectl config set-context --current --namespace=sql
kubectl apply -f persistentVolume.yaml
kubectl apply -f sqlService.yml
kubectl apply -f sqlConfigMap.yml -f sqlSecret.yml
kubectl apply -f sqlStatefullset.yml
