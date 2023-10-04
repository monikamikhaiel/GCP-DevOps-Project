# GCP-DevOps-Project
This repository is for this projecthttps://kodekloud.com/courses/gcp-devops-project/

## terraform for GCP ##
a. create a new service account and download its json credentails
b. grant the new service account the permission to create the new resources
c. add the roles to the new service account inside the project scope  editor role 

create the necessary cluster via tf cli locally 
## Generate the k8s-manifests via ##
kubectl create deploy nginx --image=nginx --replicas=1 -n gcp-devops-project-prod --dry-run -o yaml 
kubectl create service clusterip my-flask-app --tcp=5000:5000 -n gcp-devops-project-prod --dry-run -o yaml