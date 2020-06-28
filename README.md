# Application routing demo

This project is about learning and better understanding routing in K8S with an easy to configure app.

```
git clone https://github.com/xxradar/app_routable_demo.git
cd ./app_routable_demo
./setup.sh
watch kubectl get po -napp-routable-demo
```

This is the layout of the application
![App Routable demo](img.png "App Routable demo")

Navigate by modifying the parameters in the **curl** command
```
kubectl run -it -n app-routable-demo --rm --image xxradar/hackon mycurler -- bash'
       curl -v -H "Cookie: loc=client" http://zone1/app3'
```
