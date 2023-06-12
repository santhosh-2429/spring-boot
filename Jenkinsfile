pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn install'
            }
        }
        stage('Deploy') {
            steps {
                sh 'java -jar target/api-0.0.1-SNAPSHOT.jar --server.port=8083'
            }
        }
    }
}
