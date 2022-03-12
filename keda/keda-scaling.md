```
kubectl apply -f - <<EOF
apiVersion: keda.sh/v1alpha1
kind: ScaledObject
metadata:
  name: cpu-scaledobject-echo-server-2
  namespace: app-routable-demo 
spec:
  scaleTargetRef:
    name: echoserver-2-deployment
  triggers:
  - type: cpu
    metadata:
      type: AverageValue
      value: "50"
EOF
```


