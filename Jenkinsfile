pipeline {
  agent any
  stages {
    stage('building image') {
      steps {
        withCredentials([file(credentialsId: 'connect123', variable: 'FILE')]) {
      sh 'ssh -i $FILE ubuntu@34.207.85.254'
    }
        sh '''docker build -t chaitu .
        
'''
      }
    }

    stage('Deploying') {
      steps {
        sh 'Docker run -dt --name Chaitu-container -p 8089:8080 chaitu '
      }
    }

  }
}
