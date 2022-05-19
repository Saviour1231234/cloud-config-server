FROM openjdk:17-jdk-slim-buster

VOLUME /tmp
EXPOSE 8080
ADD build/libs/spring-cloud-config-server-0.0.1-SNAPSHOT.jar config-server.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/config-server.jar"]