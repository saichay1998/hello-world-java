pipeline {
  agent any
  stages {
     stage('Maven build') {
      steps {
        sh '''cd hello-world
        whoami
        mvn clean install
        cp /root/.m2/repository/com/example/maven-project/webapp/1.0-SNAPSHOT/webapp-1.0-SNAPSHOT.war /var/jenkins/workspace/test2/test.war
        
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
