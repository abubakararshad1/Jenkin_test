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

            // Archive the Robot Framework output files
            archiveArtifacts artifacts: 'Results/*.html', fingerprint: true

            // (Optional) Use HTML Publisher Plugin to show report.html in Jenkins UI
            publishHTML (target: [
                reportDir: 'Results',
                reportFiles: 'report.html',
                reportName: 'Robot Framework Report'
            ])
        }
    }
}
