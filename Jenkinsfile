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
              }
         }
		 stage('Build Docker image') {
              steps {
                  sh run_docker.sh
              }
         }
         
         stage('Upload Docker image') {
              steps {
                  sh upload_docker.sh
              }
         }
     }
}
