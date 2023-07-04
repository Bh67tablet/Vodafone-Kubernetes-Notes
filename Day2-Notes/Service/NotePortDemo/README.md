Lab Execution Steps:
====================

Delete all exisitng replicaSet
==============================

kubectl delete all --all

Create new replicaSet and Nodeport Service
===============================

kubectl create -f https://raw.githubusercontent.com/Sonal0409/Vodafone-Kubernetes-Notes/main/Day2-Notes/Service/NotePortDemo/NodeportService.yml

Validate:
===============================

kubectl get all

kubectl get svc

service/mysvc        NodePort    10.105.31.132    <none>        80:32111/TCP
  
Copy the node port.

  
Access the pod application by using MASTER VM desktop and node port
========================================

kubectl get nodes -o wide

copy the internal ip of master node.

Go to Matser VM, and click on Desktop

Open the browser and give:

<MasterInternalIP>:<Nodeportnumber>

You will see the request sent to your pod.


  
  
