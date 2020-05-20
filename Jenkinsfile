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
                  /*sh '/home/ec2-user/.nvm/versions/node/v10.20.1/bin/ng lint'*/
                  /*sh 'hadolint Dockerfile'*/
              }
         }
		 stage('Build Docker image') {
              steps {
                  sh "docker build -t angular-tour-of-heroes-1 ."
                  sh "docker image ls"
              }
         }
         
         stage('Upload Docker image') {
              steps {
                  sh upload_docker.sh
              }
         }
     }
}
