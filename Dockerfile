#FROM openjdk:8-jdk-alpine
#FROM openjdk:17-alpine
FROM openjdk:21

WORKDIR /target

RUN mv target/*.jar app.jar

COPY app.jar .

# CMD ["java","-jar","app.jar"]
ENTRYPOINT ["java","-jar","app.jar"]