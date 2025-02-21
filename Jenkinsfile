pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                // Use 'bat' for Windows or 'sh' for Linux
                bat 'mvn clean package'
            }
        }
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'target/*.war', fingerprint: false
            }
        }
    }
    post {
        success {
            echo 'Build successful! The WAR file is ready for deployment.'
        }
        failure {
            echo 'Build failed! Please check the logs for details.'
        }
    }
}
