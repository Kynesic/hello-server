pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'gcloud docker -- --version'
                sh 'docker build -t hello-server .'
                sh 'docker tag hello-server gcr.io/production-175011/jenkins-hello-server'
                sh 'gcloud docker --authorize-only'
                sh 'gcloud docker -- push gcr.io/production-175011/jenkins-hello-server'
            }
        }
    }
}
