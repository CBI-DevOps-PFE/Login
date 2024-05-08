pipeline {
    agent any

    environment {
        dockerImage = ''
        registry = 'bounajia/Login:latest'
        registryCredential = 'dockerhub_id'
    }

    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }

        stage('build docker img') {
            steps {
                script {
                    dockerImage = docker.build(registry, '--build-arg JAR_FILE=target/Login.jar .')
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Add test commands or scripts here
                }
            }
        }

        stage('uploading img') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
