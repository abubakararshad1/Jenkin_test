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
                echo 'Running Robot Framework tests...'
                bat '''
                    if not exist Results mkdir Results
                    robot -d Results TestCases/
                '''
            }
        }
    }

    post {
        always {
            echo 'Tests finished. Archiving and publishing reports...'

            // Optional: archive output files for debugging
            archiveArtifacts artifacts: 'Results/*.html', fingerprint: true

            // ✅ Publish Robot Framework HTML report to Jenkins UI
            publishHTML(target: [
                reportDir: 'Results',
                reportFiles: 'report.html',
                reportName: 'Robot Framework Report',
                keepAll: true,
                alwaysLinkToLastBuild: true,
                allowMissing: false
            ])
        }
    }
}
