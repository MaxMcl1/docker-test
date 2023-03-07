pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                script{
                    checkout scm
                }
            }
        }
        stage('Build Docker image') {
            steps {
                script{
                app = docker.build("maxmcl/docker-test")
                }
            }
        }
        stage('Push Docker image to DockerHub') {
            steps {
                script{
                        docker.withRegistry('https://720766170633.dkr.ecr.us-east-2.amazonaws.com', 'ecr:us-east-2:aws-credentials') {
                    app.push("${env.BUILD_NUMBER}")
                    app.push("latest")
                    }
                }
            }
        }
    }
}
