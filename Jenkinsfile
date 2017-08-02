pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker build -t hello-server .'
                sh 'docker tag hello-server eu.gcr.io/production-175011/jenkins-hello-server'
                sh 'gcloud docker --authorize-only'
                sh 'gcloud docker -- push eu.gcr.io/production-175011/jenkins-hello-server'
            }
        }
    }
}
