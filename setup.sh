#!/bin/bash


git clone https://github.com/xxradar/app_routable_demo.git
cd ./app_routable_demo
kubectl create ns routable-app-demo
kubectl apply -n routable-app-demo -f ./nginx-conf-map.yaml
kubectl apply -n routable-app-demo -f ./zone_svc.yaml
kubectl apply -n routable-app-demo -f ./echoserver1.yaml
kubectl apply -n routable-app-demo -f ./echoserver2.yaml
kubectl apply -n routable-app-demo -f ./nginx-zone.yaml
kubectl get po -n routable-app-demo

echo 'kubectl run -it -n routable-app-demo --rm --image xxradar/hackon mycurler -- bash'