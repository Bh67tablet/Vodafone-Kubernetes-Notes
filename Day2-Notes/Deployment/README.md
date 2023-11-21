Create the deployment and service object

...
# kubectl create -f https://raw.githubusercontent.com/Sonal0409/Vodafone-Kubernetes-Notes/main/Day2-Notes/Deployment/deployment.yml
...

# kubectl get deployment 

# kubectl get service 

# kubectl get pods

# kubectl scale deployment kubeserve --replicas=5
# kubectl get pods 
# kubectl scale deployment kubeserve --replicas=2

Change the Image
# kubectl set image deployment kubeserve app=leaddevops/kubeserve:v2
# kubectl rollout status

# kubectl set image deployment kubeserve app=leaddevops/kubeserve:v3

# kubectl rollout status deployment kubeserve

V3 is faulty.. so rollback to previous version

# kubectl rollout undo deployment kubeserve

#   kubectl rollout history deployment kubeserve
# kubectl rollout history deployment kubeserve --revision=3


Note:
========================

Run the loop to send continous request to service object

Go to worker node and execute below command:

while true;do curl <serviceClusterIP>:80;sleep 1;echo"";done

example:
while true;do curl 10.102.253.113:80;sleep 1;echo"";done



