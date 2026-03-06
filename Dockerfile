# Use a JDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built jar file into the container
# Note: Ensure the path matches what Maven built
COPY target/jenkins-0.0.1-SNAPSHOT.jar app.jar

# Expose the port
EXPOSE 8080

# The command to run the app
ENTRYPOINT ["java","-jar","app.jar"]
