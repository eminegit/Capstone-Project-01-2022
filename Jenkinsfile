pipeline {
      agent any
          stages {
               stage('Clone Repository') {
               steps {
               checkout scm
               }
          }
          stage('Build Image') {
               steps {
               sh "docker build -t emined/projectimage ."
               }
         }
         stage('Push image') {
               steps {
               sh 'docker push emined/projectimage'
               }
         }
         stage('Copy deployment file'){
              steps {
              sh "scp -o StrictHostKeyChecking=no deployment.yml eminedogan@192.168.1.174:/home/ubuntu"
              }
         }
         stage('Deploy kubernetes'){
              steps{
              sh 'ssh eminedogan@192.168.1.174 kubectl apply -f deployment.yml'
              }
         }
         stage('Testing') {
              steps {
                    echo 'Testing...'
                    }
         }
}
}

