# Use the official OpenJDK 17 image as base
FROM openjdk:17-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container at /app
COPY target/Login.jar /app/Login.jar

# Specify the command to run your application
CMD ["java", "-jar", "Login.jar"]
