pipeline {
    agent any

    stages {

        stage('Check Python') {
            steps {
                echo 'Checking Python version...'
                bat 'python --version'
            }
        }


        stage('Run Robot Tests') { 
            steps { 
                echo 'Running all Robot Framework test files in TestCases folder...'
                bat '''
                    for %%f in (TestCases\\*.robot) do (
                        echo Running: %%f
                        robot "%%f"
                    )
                '''
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
    }
}
