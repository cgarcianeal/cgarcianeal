# sort by time
--sort-by=.metadata.creationTimestamp

# select on certain node
kubectl get pods --all-namespaces -o wide --field-selector spec.nodeName=<node>

# k run overrides
kubectl run nginx --image=nginx --overrides='{ "apiVersion": "v1", "spec": { ... } }'

# kill resource stuck on terminating
kubectl patch <type> <name> -p '{"metadata":{"finalizers":null}}' -n <ns>
kubectl delete pods <pod>  -n <ns> --grace-period=0 --force

# find api short name
kubectl api-resources -o wide

