#!/bin/bash

# create k8s cluster with 3 nodes
# k3d cluster create bo-devops-empire --servers 3
k3d cluster create bo-devops-empire

# create an ingress
# k3d cluster create --api-port -p "8081:80@loadbalancer" -- agents 2
# k3d cluster create -p 8081:80@loadbalancer:0
export KUBECONFIG="$(k3d kubeconfig write bo-devops-empire)"
# kubectl create deployment nginx --image=nginx
# kubectl create service clusterip nginx --tcp=80:80
# kubectl apply -f ingress.yaml
# curl localhost:8081/
