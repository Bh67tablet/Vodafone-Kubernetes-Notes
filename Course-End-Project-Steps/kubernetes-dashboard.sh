kubectl create -f https://raw.githubusercontent.com/sonal0409ORG/educka/master/dashboard/dashboard-insecure-v2.4.0.yml
kubectl create namespace cep-project1
kubectl create serviceaccount sandry --namespace cep-project1
kubectl create clusterrolebinding sandry-access --serviceaccount=cep-project1:sandry --clusterrole=cluster-admin
