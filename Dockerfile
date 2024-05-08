# Use the official OpenJDK 17 image as base
FROM openjdk:17-oracle

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container at /app
<<<<<<< HEAD
COPY . .
=======
COPY target/Login.jar /app/Login.jar
>>>>>>> e176ee7e6a965bdc8d02eb7ac38aa1de53f3d225

# Specify the command to run your application
CMD ["java", "-jar", "Login.jar"]
