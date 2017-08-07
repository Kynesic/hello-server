pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker build -t hello-server .'
                sh 'docker tag hello-server gcr.io/production-175011/jenkins-hello-server'
            }
        }
    }
}
