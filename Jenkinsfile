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
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/CBI-DevOps-PFE/Login.git']]])
            }
        }

        stage('build docker img') {
            steps {
                script {
                    docker build -t bounajia/login:latest --build-arg JAR_FILE=target/Login.jar .

                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Add test commands or scripts here
                    sh 'echo "Running tests"'
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
