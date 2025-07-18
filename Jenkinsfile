pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    echo 'Building the Docker image...'
                     bat 'docker build -t myapp:latest .'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    echo 'Running tests...'
                    bat 'docker run -p 4000:8000 myapp:latest'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    echo 'Deploying the application...'
                    bat 'docker run -d --name myapp_container myapp:latest'
                }
            }
        }
    }
}
