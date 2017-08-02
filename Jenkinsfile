pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'gcloud docker -- --version'
                sh 'docker build -t hello-server:0.0.0.2 .'
                sh 'docker tag hello-server eu.gcr.io/production-175011/jenkins-hello-server:0.0.0.2'
                sh 'gcloud docker --authorize-only'
                sh 'gcloud docker -- push eu.gcr.io/production-175011/jenkins-hello-server:0.0.0.2'
            }
        }
    }
}
