#!/bin/bash

helm repo add projectcalico https://docs.tigera.io/calico/charts
kubectl create namespace tigera-operator
helm install calico projectcalico/tigera-operator --version v3.27.5 --namespace tigera-operator

kubectl apply -f calico-quay-crd.yaml
kubectl -n calico-system get pod
