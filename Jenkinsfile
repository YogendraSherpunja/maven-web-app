pipeline {
    agent any

    tools {
        maven 'Maven 3.9.9'  
    }
    environment {
        DOCKER_IMAGE = 'yogendra23/maven-webapp:latest' // Define Docker image name
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Maven Project') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'target/*.war', followSymlinks: false
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials',
                                              passwordVariable: 'DOCKER_PASSWORD',
                                              usernameVariable: 'DOCKER_USERNAME')]) {
                    bat 'echo %DOCKER_PASSWORD% | docker login -u %DOCKER_USERNAME% --password-stdin'
                }
            }
        }

          stage('Docker Build') {
               steps {
                   bat "docker build -t $DOCKER_IMAGE ."
               }
           }

           stage('Docker Push') {
               steps {
                   bat "docker push $DOCKER_IMAGE"
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
        always {
            bat 'docker logout'
    }
  }
}
