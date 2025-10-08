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

        stage('Run Robot Test Cases') {
            steps {
                // Run all .robot files inside Jenkin_test/TestCases
                bat 'robot Jenkin_test/TestCases'
            }
        }
    }
}
