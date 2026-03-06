
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY target/docker-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTR  YPOINT ["java","-jar","app.jar"]
