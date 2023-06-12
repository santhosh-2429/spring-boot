
#FROM openjdk:11
#WORKDIR /tmp
#COPY ./target/api-0.0.1-SNAPSHOT.jar /app
#ARG JAR_FILE=target/api-0.0.1-SNAPSHOT.jar
#ADD ${JAR_FILE} app.jar
#CMD ["java","-jar","/api-0.0.1-SNAPSHOT.jar"]
#COPY target/*.jar app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]

FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
