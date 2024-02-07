# Use the official Maven image for the build stage
FROM maven:3.8.4-openjdk-17-slim AS builder

# Set the working directory in the container
WORKDIR /app

# Copy the Maven POM file
COPY pom.xml .

# Enable annotation processing for Lombok
RUN mvn install -DskipTests

# Download the Maven dependencies
RUN mvn dependency:go-offline

# Copy the rest of the application code
COPY . .

# Build the application
RUN mvn package

# Runtime Stage
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file from the builder stage
COPY --from=builder /app/target/Sprachenrad-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that the Spring Boot application listens on
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "/app/app.jar"]
