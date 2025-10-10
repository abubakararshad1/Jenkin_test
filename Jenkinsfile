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
                bat 'pip install -r requirements.txt'
            }
        }

        stage('Run Robot Tests') {
            steps {
                // Ensure the Results folder exists
                bat 'if not exist Results mkdir Results'

                // Run all Robot Framework test files inside TestCases/, output to Results/
                bat 'robot -d Results TestCases/'
            }
        }
    }

    post {
        always {
            echo 'Archiving and emailing Robot Framework test reports...'

            // ✅ Archive the generated HTML report and log
            archiveArtifacts artifacts: 'Results/report.html, Results/log.html', allowEmptyArchive: true

            // ✅ Publish Robot report in Jenkins UI (clickable from sidebar)
            publishHTML(target: [
                reportDir: 'Results',
                reportFiles: 'report.html',
                reportName: 'Robot Framework Report',
                keepAll: true,
                alwaysLinkToLastBuild: true,
                allowMissing: false
            ])

            // ✅ Email the report and log from Outlook sender to recipient
            emailext(
                subject: "Robot Test Results: ${env.JOB_NAME} #${env.BUILD_NUMBER} - ${currentBuild.currentResult}",
                body: """
              
               <h3>Jenkins Build Notification</h3>
               <p><strong>Job:</strong> ${env.JOB_NAME}</p>
               <p><strong>Build Number:</strong> ${env.BUILD_NUMBER}</p>
               <p><strong>Status:</strong> <span style='color:${currentBuild.currentResult == "SUCCESS" ? "green" : "red"}'>
               ${currentBuild.currentResult}</span></p>
               <p>The Robot Framework HTML test report has been generated.</p>
               <p><a href="${env.BUILD_URL}">Click here to view the full build and report</a></p>
               """,
                
                from: 'admin@outlook.com',  // ✅ Optional: override sender if not globally set
                to: 'abubakar.arshad@bssuniversal.com, omar.moazzam@bssuniversal.com',
                mimeType: 'text/html',
                attachmentsPattern: 'Results/report.html, Results/log.html'
            )
        }
    }
}
