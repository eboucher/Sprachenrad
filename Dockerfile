# Stage 1: Build the application
FROM maven:3.8.5-openjdk-17-slim AS builder

WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline

COPY src/ /app/src/
RUN mvn package -DskipTests

# Stage 2: Create the final image
FROM openjdk:17-oracle

WORKDIR /app
COPY --from=builder /app/target/Sprachenrad-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
