pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker image') {
            steps {
                app = docker.build("maxmcl/docker-test")
            }
        }
        stage('Push Docker image to DockerHub') {
            steps {
                    docker.withRegistry('https://720766170633.dkr.ecr.us-east-2.amazonaws.com', 'ecr:us-east-2:aws-credentials') {
                app.push("${env.BUILD_NUMBER}")
                app.push("latest")
                }
            }
        }
    }
}
