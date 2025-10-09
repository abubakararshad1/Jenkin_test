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
                echo 'Running all Robot Framework test cases in TestCases folder...'
                // bat 'robot TestCases'
                // OR if you prefer to be explicit
                    bat 'robot TestCases\\Frames.robot'
                    bat 'robot TestCases\\RegisterationTest.robot'
                    bat 'robot TestCases\\Frames.robot'
                
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished. Optionally archive or clean up artifacts here.'
        }
    }
}
