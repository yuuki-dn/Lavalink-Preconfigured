# Use the official Eclipse Temurin JRE 21 image as a parent image
FROM eclipse-temurin:21-jre

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the host machine to the container
COPY Lavalink.jar .
COPY application.yml .

# Run the JAR file
ENTRYPOINT ["java", "-jar", "Lavalink.jar"]
