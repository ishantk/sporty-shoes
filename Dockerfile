# Use official JDK as the base image
FROM openjdk:11

# Expose Port
EXPOSE 9010

# Create Argument
ARG JAR_FILE=target/*.jar

# Copy the the JAR file
COPY ${JAR_FILE} app.jar

# Run the JAR file
ENTRYPOINT ["java","-jar","/app.jar"]

