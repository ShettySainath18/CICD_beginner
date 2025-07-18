pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    echo 'Building the Docker image...'
                    sh 'docker build -t myapp:latest .'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    echo 'Running tests...'
                    sh 'docker run --rm myapp:latest ./run-tests.sh'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    echo 'Deploying the application...'
                    sh 'docker run -d --name myapp_container myapp:latest'
                }
            }
        }
    }
}