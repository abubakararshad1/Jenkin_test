pipeline {
    agent any

    stages {

        stage('Check Python') {
            steps {
                bat 'python --version'
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
