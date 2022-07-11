pipeline {
    agent any
    stages {
        stage('Start Server') {
            steps {
				sh 'npm install'
				sh './scripts/start.sh'
            }
        }
        stage('Test Request') {
            steps {
                echo 'Testing..'
				sh './scripts/deliver.sh'
            }
        }
        stage('Stop Server') {
            steps {
                echo 'Deploying....'
				sh './scripts/kill.sh'
            }
        }
    }
}