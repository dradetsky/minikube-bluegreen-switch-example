#!/bin/bash
#
# stolen from:
#
# https://blog.hasura.io/sharing-a-local-registry-for-minikube-37c7240d0615

cmd() {
    kubectl port-forward --namespace kube-system \
            $(kubectl get po -n kube-system | grep kube-registry-v0 | \
                  awk '{print $1;}') 5000:5000
}

cmd &
