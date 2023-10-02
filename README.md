# GCP-DevOps-Project
This repository is for this projecthttps://kodekloud.com/courses/gcp-devops-project/
## Generate the k8s-manifests via ##
kubectl create deploy nginx --image=nginx --replicas=1 -n gcp-devops-project-prod --dry-run -o yaml 
kubectl create service clusterip my-flask-app --tcp=5000:5000 -n gcp-devops-project-prod --dry-run -o yaml