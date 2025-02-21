pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',url:'https://github.com/YogendraSherpunja/maven-web-app.git'
            }
        }
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying application...'
            }
        }
    }
}
