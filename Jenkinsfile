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
                // Run all .robot files in the testcases folder
                bat 'robot Jenkin_test/TestCases'
            }
        }
    }
}
