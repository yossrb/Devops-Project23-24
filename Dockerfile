FROM openjdk:11-jdk-alpine
COPY target/*.jar app.jar
EXPOSE 8082
ENTRYPOINT ["java", "-jar","app.jar"]
