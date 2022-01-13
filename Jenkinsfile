pipeline {
environment {
registry = "lobnaameskane/jenkinsimage"
registryCredential = 'dockerhub'
dockerImage = 'openjdk:8-jdk-alpine'
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
 docker.withRegistry( 'openjdk:8-jdk-alpine', registryCredential ) {
 dockerImage.push()
 }
 }
 }
}
}
}
