![Pipeline (1)](https://user-images.githubusercontent.com/39452579/233925555-ea8327e3-66d1-42e8-9d67-323555073773.jpg)

# kubernetes-configmap-reload

Pre-requisites:
--------
    - Install Git
    - Install Maven
    - Install Docker
    - EKS Cluster
    
Clone code from github:
-------
    git clone https://github.com/ganasai88/CI-CD-Project.git
    cd CI-CD-Project
    
Build Maven Artifact:
-------
    mvn clean install
 
Build Docker image for Springboot Application
--------------
    docker build -t dockerhubuserid/imagename
  
Docker login
-------------
    docker login
    
Push docker image to dockerhub
-----------
    docker push dockerhubuserid/imagename
    
Deploy Spring Application:
--------
    kubectl apply -f .
    
Check Deployments, Pods and Services:
-------

    kubectl get deploy
    kubectl get pods
    kubectl get svc
    
Now Goto Loadbalancer and check whether service comes Inservice or not, If it comes Inservice copy DNS Name of Loadbalancer and Give in WebUI

 
Now we can cleanup by using below commands:
--------
    kubectl delete deploy kubernetes-configmap-reload
    kubectl delete svc kubernetes-configmap-reload

