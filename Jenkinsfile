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
                  sh "docker build -t angular-tour-of-heroes ."
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
                  sh 'sudo /home/ec2-user/bin/kubectl apply -f ./kb-deployment.yaml'
                  sh 'sudo /home/ec2-user/bin/kubectl apply -f ./kb-service.yaml'
                  sh 'sudo /home/ec2-user/bin/kubectl apply -f ./kb-loadbalancer.yaml'
              }
         }
     }
}
