#FROM openjdk:8-jdk-alpine
#FROM openjdk:17-alpine
FROM openjdk:21





COPY target/demo-webapp-0.0.1-SNAPSHOT.jar .

# CMD ["java","-jar","app.jar"]
ENTRYPOINT ["java","-jar","demo-webapp-0.0.1-SNAPSHOT.jar"]