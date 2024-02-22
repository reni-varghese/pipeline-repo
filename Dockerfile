#FROM openjdk:8-jdk-alpine
#FROM openjdk:17-alpine
FROM openjdk:21



RUN mv target/demo-webapp-0.0.1-SNAPSHOT.jar/*.jar app.jar

COPY target/app.jar .

# CMD ["java","-jar","app.jar"]
ENTRYPOINT ["java","-jar","app.jar"]