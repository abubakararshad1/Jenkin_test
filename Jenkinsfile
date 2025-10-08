pipeline {
    agent any

    stages {

        stage('Check Python') {
            steps {
                bat 'python --version'
            }
        }

            stage('Install Dependencies') { 
        steps { 
            bat 'pip install robotframework robotframework-seleniumlibrary' 
        }
                
            }
        
         stage('Run Robot Tests') { 
        steps { 
            bat 'robot Frames.robot' 

                                 //or you can write bat 'robot *.robot' to execute all the robot files. 
        }

}
    }}
