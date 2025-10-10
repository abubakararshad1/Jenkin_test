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
                    if not exist Results mkdir Results
                    for %%f in (TestCases\\*.robot) do (
                        echo Running: %%f
                        robot -d Results "%%f"
                    )
                '''
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'

            // Required: archive output.xml for Robot plugin to work
            archiveArtifacts artifacts: 'Results/output.xml', fingerprint: true

            // Tell Jenkins Robot Framework Plugin to parse results
            robot outputPath: 'Results'
        }
    }
}
