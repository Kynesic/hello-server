pipeline {
  agent any
    stages {
      stage('build') {
        steps {
          sh 'docker'
          sh 'docker --version'
          sh 'docker build -t eu.gcr.io/production-175011/jenkins-hello-server .'
          sh 'docker build -t eu.gcr.io/production-175011/jenkins-hello-server . --network=host'
          sh 'gcloud docker -- push eu.gcr.io/production-175011/jenkins-hello-server'
        }
      }
    }
}
// podTemplate(label: 'mypod', containers: [
//     containerTemplate(name: 'jnlp', image: 'jenkinsci/jnlp-slave:2.62-alpine', args: '${computer.jnlpmac} ${computer.name}'),
// ]) {
//    node('mypod') {
//        stage('Run shell') {
//            sh 'echo hello world'
//        }
//    }
// }
