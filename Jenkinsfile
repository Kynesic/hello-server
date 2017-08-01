pipeline {
    agent { docker 'node:6.3' }
    stages {
        stage('build') {
            steps {
                sh 'whoami'
                sh 'docker build -t hello-server .'
                sh 'docker tag hello-server gcr.io/production-175011/jenkins-hello-server'
                sh 'gcloud docker -- push gcr.io/production-175011/jenkins-hello-server'
            }
        }
    }
}
