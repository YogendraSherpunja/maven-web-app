pipeline {
    agent any

    tools {
        maven 'Maven 3.9.9' // Ensure this matches the Maven installation name in Jenkins
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
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
