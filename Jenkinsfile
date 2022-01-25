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
         stage('Testing') {
              steps {
                    echo 'Testing...'
                    }
         }
}
}

