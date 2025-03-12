# Build the WAR file using Maven
FROM maven:3.9.8-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

# Deploy the WAR file to Jetty
FROM jetty:11-jdk21
COPY --from=build /app/target/Comp367_WebApp.war /var/lib/jetty/webapps/ROOT.war
EXPOSE 8080
