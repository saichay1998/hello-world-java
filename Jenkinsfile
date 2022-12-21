pipeline {
  agent any
  stages {
     stage('Maven build') {
      steps {
        sh '''git clone https://github.com/saichay1998/hello-world.git
        cd hello-world
        mvn clean install
        
'''
      }
    }
    
    stage('building image') {
      steps {
        sh '''pwd
              ls -ltr
        docker build -t chaitu .
        
'''
      }
    }

    stage('Deploying') {
      steps {
        sh 'docker run --name Chaitu-container -d -p 8089:8080 chaitu '
      }
    }

  }
}
