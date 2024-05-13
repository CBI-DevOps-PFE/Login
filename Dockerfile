# Use the official OpenJDK 17 image as base
FROM openjdk:17-oracle

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container at /app
COPY spring-boot-spring-security-jwt-authentication-master/target/spring-boot-security-jwt-0.0.1-SNAPSHOT.jar  spring-boot-security-jwt-0.0.1-SNAPSHOT.jar

# Specify the command to run your application
ENTRYPOINT ["java", "-jar", "/spring-boot-security-jwt-0.0.1-SNAPSHOT.jar"]