FROM openjdk:8-jdk-alpine
ARG JAR_FILE=/root/.m2/repository/com/myapp/myapp_server/0.0.1-SNAPSHOT/*.jar
COPY ${JAR_FILE} myapp_server-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/myapp_server-0.0.1-SNAPSHOT.jar"]
