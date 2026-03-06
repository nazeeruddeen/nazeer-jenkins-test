# Use an active, supported JDK 17 runtime
FROM eclipse-temurin:17-jdk-jammy

# Set the working directory
WORKDIR /app

# Copy the built jar file
COPY target/jenkins-0.0.1-SNAPSHOT.jar app.jar

# Expose the port
EXPOSE 8080

# The command to run the app
ENTRYPOINT ["java","-jar","app.jar"]
