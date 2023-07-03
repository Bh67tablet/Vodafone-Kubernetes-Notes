Lab Execution Steps:
=====================

Creation of a Pod with a single container
======================================

kubectl create -f https://raw.githubusercontent.com/Sonal0409/Vodafone-Kubernetes-Notes/main/Day1-Notes/pod.yml

kubectl get pods

kubectl get pods -o wide

kubectl describe pod nginx-pod

=====================================

Creation of a Pod wih multiple containers -> Multi Container Pod
===========================================

kubectl create -f https://raw.githubusercontent.com/Sonal0409/Vodafone-Kubernetes-Notes/main/Day1-Notes/multi-containerPod.yml

kubectl get pods -o wide

=====================================

Static Pod - Demo
=======================================

# Go to a worker node:

execute following command:

service kubelet status

Now go to this location

cd /etc/kubernetes/manifests

Create  a file with name as 

vim static-pod.yml

Copy the text given in this file : https://raw.githubusercontent.com/Sonal0409/Vodafone-Kubernetes-Notes/main/Day1-Notes/Static-pod.yml

Save the file (:wq!)

Go to Master node
================================

kubectl get pods --> static pod wil be there , here node name will be appeneded to pod name

kubectl get pods -o wide --> pod will be scenduled on the same node by kubelet

Now delete the pods and observe the behaviour

$ kubectl delete pod <podname>

You will observe kubelet will recreaate the pod on itself

The only way to delete static pod is to delete the yaml file on slave node in the directory cd /etc/kubernetes/manifests

go to Worker Node 
==========================

cd /etc/kubernetes/manifests

rm static-pod.yml

go to master and check the if pod is available or not

=====================================
Init-Containers Demo
==============================

kubectl create -f https://raw.githubusercontent.com/Sonal0409/Vodafone-Kubernetes-Notes/main/Day1-Notes/initcontainers.yml

kubectl get pods

===========================================
ReplicaSet Demo
===========================================

kubectl create -f https://raw.githubusercontent.com/Sonal0409/Vodafone-Kubernetes-Notes/main/Day1-Notes/ReplicaSet.yml

kubectl get pods

kubectl get pods --show-labels

kubectl get pods -l type=webserver

kubectl get all

kubectl scale --replicas=5 replicaset myrs1

kubectl scale --replicas=2 replicaset myrs1

kubectl delete replicaset myrs1





