pipeline {
    agent any

    stages {
        stage('clean') {
            steps {
                sh 'mvn clean'
            }
        }
        stage('Pack') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Deploy') {
            steps {
                sh 'cp target/*.war /opt/apache-tomcat-8.5.38/webapps'
            }
        }
    }
}
