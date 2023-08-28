#!/bin/sh

echo "\n📦 Deleting backing platform services..."
kubectl delete -f services

echo "\n🏴️ Destroying Kubernetes cluster...\n"

minikube stop --profile polar

minikube delete --profile polar

echo "\n🏴️ Cluster destroyed\n"
