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

                // Runs all .robot files in TestCases/ and outputs results to Results/
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

            // 🗂️ Archive report and log files for future access/download
            archiveArtifacts artifacts: 'Results/*.html', fingerprint: true

            // 🌐 Publish HTML report to Jenkins UI using HTML Publisher Plugin
            publishHTML(target: [
                reportDir: 'Results',             // Folder containing report.html
                reportFiles: 'report.html',       // Main HTML file to open
                reportName: 'Robot Framework Report', // Display name in Jenkins
                keepAll: true,                    // Keep reports for all builds
                alwaysLinkToLastBuild: true,      // Link always points to latest report
                allowMissing: false               // Fail build if report.html is missing
            ])
        }
    }
}
