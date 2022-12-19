pipeline {
  agent any
  stages {
    stage('building image') {
      steps {
        sh '''docker build -t chaitu .
        
'''
      }
    }

    stage('Deploying') {
      steps {
        sh 'docker run -dt --name Chaitu-container -p 8089:8080 chaitu '
      }
    }

  }
}
