pipeline {
     agent any
     stages {
         stage('Build') {
             steps {
                 sh 'echo "started"'
             }
         }
		 stage('Lint Angular app') {
              steps {
                  sh 'echo "Linting .."'
                  sh 'sudo /home/ec2-user/.linuxbrew/bin/hadolint Dockerfile'
              }
         }
		 stage('Build Docker image') {
              steps {
                  sh "docker build -t angular-tour-of-heroes-2 ."
                  sh "docker image ls"
              }
         }
         
         stage('Upload Docker image') {
              steps {
                  sh 'sh upload_docker.sh'
              }
         }
         
         stage('Deployment') {
              steps {
                  sh 'sudo eksctl update cluster --name=eks-capstone-cluster'
                  /*sh 'kubectl apply -f eks/kb-deployment.yam' 
                  sh 'kubectl apply -f eks/kb-service.yaml'
                  sh 'kubectl apply -f eks/kb-loadbalancer.yaml'*/
              }
         }
     }
}
