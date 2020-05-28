FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
VOLUME ["/var/log"]
ENTRYPOINT ["java","-jar","/app.jar"]