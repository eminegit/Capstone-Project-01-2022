pipeline {
      agent any
      environment{
      DOCKERHUB_CREDENTIALS = credentials('DockerHub')
    }

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
          stage('Login to DockerHub'){
               steps{
                     sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
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

