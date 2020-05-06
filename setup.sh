#!/bin/bash


git clone https://github.com/xxradar/app_routable_demo.git
cd ./app_routable_demo
kubectl create ns app_routable_demo
kubectl apply -n app_routable_demo -f ./nginx-conf-map.yaml
kubectl apply -n app_routable_demo -f ./zone_svc.yaml
kubectl apply -n app_routable_demo -f ./echoserver1.yaml
kubectl apply -n app_routable_demo -f ./echoserver2.yaml
kubectl apply -n app_routable_demo -f ./nginx-zone.yaml
kubectl get po -n app_routable_demo

echo 'kubectl run -it -n app_routable_demo --rm --image xxradar/hackon mycurler -- bash'