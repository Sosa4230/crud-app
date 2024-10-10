# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file into the container
COPY target/SimplestCRUDExample-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that your Spring Boot app runs on (default 8080)
EXPOSE 9091

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]