pipeline {
    agent any
    stages {
        stage('Start Server') {
            steps {
				sh './scripts/deliver.sh'
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
				sh './scripts/kill.sh'
            }
        }
    }
}