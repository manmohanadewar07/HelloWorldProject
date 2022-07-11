pipeline {
    agent any
    stages {
        stage('Start Server') {
            steps {
				sh './scripts/start.sh'
				echo 'launch server app'
            }
        }
        stage('Test Response') {
            steps {
				echo 'Verifying app is up and running'
				sh './scripts/request.sh'	
				echo 'Writeing Response to Response.txt file'			
            }
        }
        stage('Stop Server') {
            steps {
				echo 'Reading Response.txt file'
				echo 'Removing Response.txt file'
				sh './scripts/kill.sh'
				echo 'Stop server'
            }
        }
    }
}