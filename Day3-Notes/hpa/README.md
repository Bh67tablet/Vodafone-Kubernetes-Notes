
Create deployment, service and HPA 

# kubectl create -f https://raw.githubusercontent.com/Sonal0409/Vodafone-Kubernetes-Notes/main/Day3-Notes/hpa/hpa.yml

Now launch the load generator pod -> open master terminal again

# kubectl run -i --tty load-generator --rm --image=busybox --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"

Check the pods:

# kubectl get pods

# kubectl top pods
