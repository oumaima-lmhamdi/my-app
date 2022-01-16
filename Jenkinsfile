pipeline {
environment {
registry = "oumaimalmhamdi/docker-repository"
registryCredential = 'dockerhub-credentials'
dockerImage = ''

}
agent any
tools {
    maven 'Maven'
}
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
