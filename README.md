# app_routable_demo

This project is about learning and better understanding routing in K8S with an easy to configure app.

```
git clone https://github.com/xxradar/app_routable_demo.git
cd ./app_routable_demo
./setup.sh
```

This is the layout of the application
![App Routable demo](img.png "App Routable demo")

Try to navigate by modifying the parameters
```
kubectl run -it -n app-routable-demo --rm --image xxradar/hackon mycurler -- bash'
       curl -v -H "Cookie: loc=client" http://zone1/app3'
```
