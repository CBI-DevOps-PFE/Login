pipeline {
    agent any

    tools{
         maven 'Maven'
    }
    environment {
        dockerImage = ''
        registry = 'bounajia/Login:latest'
        registryCredential = 'dockerhub_id'
    }

    stages {
        stage('checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/CBI-DevOps-PFE/Login.git']]])
//                 sh 'mvn clean install '
            }
        }

        stage('build docker img') {
            steps {
                script {
                    // Build Docker image and tag it with the Docker image name
//                     dockerImage = docker.build(registry.toLowerCase(), "--build-arg JAR_FILE=/app/target/Login.jar .")
                       sh 'docker build -t bounajia/login:latest .'
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
                    // Push Docker image to Docker registry
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
