FROM openjdk:8-jdk-alpine
EXPOSE 8082
ADD target/DevOps_Project.jar DevOps_Project-1.0.jar
ENTRYPOINT ["java","-jar","/DevOps_Project-1.0.jar"]
