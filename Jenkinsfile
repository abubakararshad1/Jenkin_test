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
                // Navigate to jenkin_test folder and install from requirements.txt
                bat 'pip install -r jenkin_test/requirements.txt'
            }
        }

        stage('Run Test Cases') {
            steps {
                // Run all Python test files in testcases folder
                bat 'python -m unittest discover -s jenkin_test/testcases -p "*.py"'
            }
        }
    }
}
