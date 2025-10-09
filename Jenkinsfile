pipeline {
    agent any

    stages {

        stage('Check Python') {
            steps {
                echo 'Checking Python version...'
                bat 'python --version'
            }
        }

        stage('Install Dependencies') { 
            steps { 
                echo 'Installing Robot Framework dependencies...'
                bat 'pip install --upgrade pip'
                bat 'pip install robotframework robotframework-seleniumlibrary'
            }
        }

        stage('Run Robot Tests') { 
            steps { 
                echo 'Running specific Robot Framework test files...'
                bat 'robot TestCases\\*.robot'
               
            }
        }
    }

}
