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
                // Install Python dependencies listed in requirements.txt
                bat 'pip install -r Jenkin_test/requirements.txt'
            }
        }
         stage('Run Robot Tests') { 
        steps { 
            bat 'robot Frames.robot' 

                                 //or you can write bat 'robot *.robot' to execute all the robot files. 
        }

    }
}
