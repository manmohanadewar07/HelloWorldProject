pipeline {
    agent any
    stages {
	//Added stage to start the server 
	//Stage excute step and run sh command to excute shell script start.sh inside scripts folder
        stage('Start Server') {
            steps {
				sh './scripts/start.sh'
				echo 'launch server app'
            }
        }
	//Added stage to check the response 
	//Stage excute step and run sh command to excute shell script request.sh inside scripts folder
	//This check if the website is up and getting the proper response.
        stage('Test Response') {
            steps {
				echo 'Verifying app is up and running'
				sh './scripts/request.sh'	
				echo 'Writeing Response to Response.txt file'			
            }
        }
	//Added stage to stop the server 
	//Stage excute step and run sh command to excute shell script kill.sh inside scripts folder
        stage('Stop Server') {
            steps {
				echo 'Reading Response.txt file'
				sh './scripts/kill.sh'
				echo 'Removing Response.txt file'
				echo 'Stop server'
            }
        }
    }
}
