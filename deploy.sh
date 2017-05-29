#!/bin/bash

set -ex

kubectl delete --ignore-not-found=true configmap fluent-bit
kubectl create configmap fluent-bit --from-file fluent-bit/fluent-bit.conf --from-file fluent-bit/parsers.conf

kubectl delete --ignore-not-found=true configmap fluentd
kubectl create configmap fluentd --from-file fluentd/fluent.conf

kubectl delete --ignore-not-found=true --now=true po fluent-bit
kubectl delete --ignore-not-found=true --now=true po talk-json-to-me
kubectl delete --ignore-not-found=true --now=true po talk-other-format
sleep 15

kubectl create -f fluent-bit/pod.yml
kubectl create -f talk-json-to-me/pod.yml
kubectl create -f talk-other-format/pod.yml
sleep 5

