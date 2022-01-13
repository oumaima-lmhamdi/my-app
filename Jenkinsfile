pipeline {
environment {
registry = "lobnaameskane/jenkinsimage"
registryCredential = 'dockerhub'
dockerImage = ''
  registryUrl 'https://index.docker.io/v1/'
}
agent any
stages {
 stage('Build') {
 steps {
 sh 'mvn package'
 }
 }
stage('Building image') {
steps{
 script {
 dockerImage = docker.build registry + ":$BUILD_NUMBER"
 }
 }
 }
stage('Deploy Image') {
steps{
 script {
 docker.withRegistry( '', registryCredential ) {
 dockerImage.push()
 }
 }
 }
}
}
}
