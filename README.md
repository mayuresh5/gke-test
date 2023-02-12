**For Minikube**

`minikube start --driver=virtualbox`
`minikube addons enable ingress`
`kubectl apply -f namespace.yaml`
`kubectl apply -f deployments.yaml`
`kubectl apply -f services.yaml`
`kubectl apply -f ingress.yaml`
`kubectl get ingress -n sample` (this may take some time to display address. this address equals minikube ip)

Get the minikube ip using `minikube ip` (let us assume it is 192.168.49.2)

1. Copy the *hosts* file located at `C Drive -> Windows -> Systems32-> drivers -> etc` and paste it on Desktop

2. In  the hosts file of Desktop, add the line:
`192.168.49.2 minikube-example.com` and then save it.

3. Now copy this modified hosts file from Desktop, and paste it back in `C Drive -> Windows -> Systems32-> drivers -> etc` folder.

Finally, in the browser, search for `minikube-example.com`


**FOR GKE**

1. Create GKE Cluster
2. Open GCP shell editor
3. git clone https://github.com/mayuresh5/minikube-static-app.git
4. cd k8/
5. gcloud container clusters get-credentials cluster-1 --zone=us-central1-c   #Change cluster name & zone acc. to your need.
6. kubectl apply -f namespace.yaml
7. kubectl apply -f .
8. kubectl get all

Link: https://github.com/mayuresh5/minikube-static-app


**FOR GKE AUTOMATION THROUGH SHELL**

1. Create GKE Cluster
2. Open GCP shell editor
3. git clone https://github.com/mayuresh5/minikube-static-app.git
4. curl -fsSL -o gethelm.sh https://www.githubusercontent.com/helm/helm/master/scripts/get-helm-3
5. chmod 700 get_helm.sh
6. /get_helm.sh
7. helm install my-release ingress-nginx/ingress-nginx
8. kubectl get pods --all-namespaces | grep ingress
9. chmod 700 deploy.sh
10. sh deploy.sh

