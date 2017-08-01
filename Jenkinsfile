pipeline {
    agent { docker 'node:6.3' }
    stages {
        stage('build') {
            steps {
                sh 'git --version'
                sh 'npm --version'
                sh 'node helloServer.js'                
            }
        }
    }
}
