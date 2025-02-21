pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/YOUR_USERNAME/comp367-maven-app.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying application...'
            }
        }
    }
}
