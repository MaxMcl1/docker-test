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
                        docker.withRegistry('', 'docker-creds') {
                    app.push()
                    }
                }
            }
        }
    }
}
