pipeline {
    agent { docker 'node:6.3' }
    stages {
        stage('build') {
            steps {
                sh 'node helloServer.js'
            }
        }
    }
}
