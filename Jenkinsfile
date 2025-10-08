pipeline {
    agent any

    stages {

        stage('Check Python') {
            steps {
                bat 'python --version'
            }
        }


        stage('Run Test Cases') {
            steps {
                // Run all Python test files in test-cases folder
                bat 'python -m unittest discover -s jenkin_test/testcases -p "*.py"'
            }
        }
    }
}
