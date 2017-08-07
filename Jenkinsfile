// pipeline {
//     agent any
//     stages {
//         stage('build') {
//             steps {
//                 sh 'docker build -t hello-server .'
//                 sh 'docker tag hello-server gcr.io/production-175011/jenkins-hello-server'
//             }
//         }
//     }
// }
podTemplate(label: 'mypod', containers: [
    containerTemplate(name: 'jnlp', image: 'jenkinsci/jnlp-slave:2.62-alpine', args: '${computer.jnlpmac} ${computer.name}'),
]) {
    node('mypod') {
        stage('Run shell') {
            sh 'echo hello world'
        }
    }
}