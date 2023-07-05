Execute the command for deploy postgres POD:

kubectl create -f https://raw.githubusercontent.com/Sonal0409/Vodafone-Kubernetes-Notes/main/Day2-Notes/postgress-gogs-Deployment/postgres-Deployment.yml

Execute the command to create a service that will expose posgress POD:

kubectl create -f https://raw.githubusercontent.com/Sonal0409/Vodafone-Kubernetes-Notes/main/Day2-Notes/postgress-gogs-Deployment/postgres-service.yml

Execute below command to deploy gogs web application

kubectl create -f https://raw.githubusercontent.com/Sonal0409/Vodafone-Kubernetes-Notes/main/Day2-Notes/postgress-gogs-Deployment/gogs-Deployment.yml

Execute below command to expose gogs application

kubectl create -f https://raw.githubusercontent.com/Sonal0409/Vodafone-Kubernetes-Notes/main/Day2-Notes/postgress-gogs-Deployment/gogs-service.yml

GO to desktop of master machine:

go to firefix browser and give <privateipMaster>:NodePortofGOGS

in the fields give:

host: postgres
user: postgres
password: simplilearn
database : database1

Save the change. you will see gogs page






