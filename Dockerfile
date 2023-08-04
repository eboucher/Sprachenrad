# Use the official OpenJDK 11 base image
FROM openjdk:11

# Build the bash shell
RUN apt-get update && apt-get install -y bash

# Set the working directory in the container
WORKDIR /app

# Copy the packaged Spring Boot JAR file into the container
COPY target/Sprachenrad-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that your Spring Boot application listens on
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "/app/app.jar"]
