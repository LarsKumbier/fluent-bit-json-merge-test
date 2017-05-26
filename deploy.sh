#!/bin/bash

set -ex

kubectl delete --ignore-not-found=true configmap fluent-bit
kubecte create configmap fluent-bit --from-file fluent-bit.conf --from-file parsers.conf
kubectl dete --now=true po fluent-bit && sleep 10
kubectl create -f pod.yml && exec 4
