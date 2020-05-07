#!/bin/bash

kubectl create ns app-routable-demo
kubectl apply -n app-routable-demo -f ./nginx-conf-map.yaml
kubectl apply -n app-routable-demo -f ./zone_svc.yaml
kubectl apply -n app-routable-demo -f ./echoserver1.yaml
kubectl apply -n app-routable-demo -f ./echoserver2.yaml
kubectl apply -n app-routable-demo -f ./nginx-zone.yaml
kubectl get po -n app-routable-demo

echo 'Run for example: kubectl run -it -n app-routable-demo --rm --image xxradar/hackon mycurler -- bash'
echo 'Issue foe example curl:  curl -v -H "Cookie: loc=client" http://zone1/app3'


