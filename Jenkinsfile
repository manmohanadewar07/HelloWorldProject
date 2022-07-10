pipeline {
    agent any
    stages {
        stage('Start Server') {
            steps {
                echo 'Starting Web Server on Local host port 8081'
				sh 'npm start' 
            }
        }
        stage('Test Request') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Stop Server') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}