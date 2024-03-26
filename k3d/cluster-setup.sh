#!/bin/bash
echo ''
k3d version
echo ''

k3d cluster create local-cluster --api-port 6443 -p 8080:80@loadbalancer --agents 4
kubectl cluster-info
echo ''
