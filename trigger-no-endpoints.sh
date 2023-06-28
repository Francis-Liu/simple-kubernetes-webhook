# trigger "no endpoints available for service"

kubectl apply -f dev/manifests/cluster-config/
kubectl apply -f dev/manifests/webhook/
kubectl scale deploy/simple-kubernetes-webhook --replicas=0
kubectl apply -f dev/manifests/pods/lifespan-seven.pod.yaml
