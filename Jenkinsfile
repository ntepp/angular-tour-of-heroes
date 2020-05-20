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
                  sh 'ng lint'
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
