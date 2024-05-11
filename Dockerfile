# Use the official OpenJDK 17 image as base
FROM openjdk:17-oracle

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container at /app

COPY . .


# Specify the command to run your application
CMD ["java", "-jar", "spring-boot-security-jwt-authentication-0.0.1-SNAPSHOT.jar"]
