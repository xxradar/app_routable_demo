## Install an Ingress Controller (ex. NGINX)
```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.0/deploy/static/provider/baremetal/deploy.yaml
```
## Create a certiifate for ingress tls example
```
openssl req -x509 -newkey rsa:2048 -keyout tls.key -out tls.crt -days 365 -nodes -subj "/CN=tlsapp1.dockersec.me"
kubectl create secret tls tlscertsapp1 -n app-routeble-demo --cert=./tls.crt --key=./tls.key
kubectl describe secret -n app-routeble-demo tlscertsapp1
```
