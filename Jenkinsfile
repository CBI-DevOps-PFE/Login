pipeline {
    agent any
    
    environment {
        dockerImage = ''
        registry = 'bounajia/login:latest'
        registryCredential = 'dockerhub_id'
    }

    stages {
        stage('checkout') {
            steps {
                // Checkout the source code from Git
                git branch: 'main', url: 'https://github.com/CBI-DevOps-PFE/Login.git'
            }
        }

        stage('build docker img') {
            steps {
                script {
                    // Build Docker image and tag it with the Docker image name
//                     dockerImage = docker.build(registry, "--build-arg JAR_FILE=/app/target/spring-boot-security-jwt-0.0.1-SNAPSHOT.jar .")
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
