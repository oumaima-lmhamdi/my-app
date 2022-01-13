FROM openjdk:8-jdk-alpine
EXPOSE 8080
ADD target/my-app-1.0-SNAPSHOT.war image.war
