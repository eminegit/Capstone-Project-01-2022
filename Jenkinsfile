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
         
         stage('Deploy kubernetes'){
              steps{
              sh 'kubectl apply -f deployment.yml'
              }
         }
         stage('Testing') {
              steps {
                    echo 'Testing...'
                    }
         }
}
}

