FROM maven:3.9.9-eclipse-temurin-21-alpine AS build
LABEL MANTAINER="GiovannaS28"

WORKDIR /app

RUN wget -O dd-java-agent.jar 'https://dtdg.co/latest-java-tracer'

COPY target/*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]