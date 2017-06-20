#!/bin/sh
for pod in `kubectl get pods -n nginx-ingress | awk '{print $1}' | tail -n +2`; do kubectl delete pod -n nginx-ingress $pod; sleep 30; done
