#!/bin/bash
kubectl apply -f springboot-mongo-app.yml
kubectl get services springboot-app-svc
kubectl apply -f deny-ingress-to-mongodb-and-springapp.yaml
kubectl get netpol
kubectl get services springboot-app-svc
kubectl apply -f allow-ingress-to-springapp-from-all.yaml
kubectl get services springboot-app-svc
kubectl apply -f allow-ingress-to-mongodb-from-springapp.yaml
