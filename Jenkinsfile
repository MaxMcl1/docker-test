pipeline {
    agent any
    
    stages {
        stage('Build Docker image') {
            steps {
                sh 'docker build -t maxmcl/docker-test .'
            }
        }
        stage('Push Docker image to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
                    sh 'docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD'
                    sh 'docker push maxmcl/docker-test'
                }
            }
        }
    }
}
