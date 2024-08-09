# Use a base image with Java runtime
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/book-service-0.0.1-SNAPSHOT.jar /app/book-service.jar

# Expose the port your application runs on
EXPOSE 8081

# Set the command to run your application
ENTRYPOINT ["java", "-jar", "book-service.jar"]
