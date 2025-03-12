FROM jetty:11-jdk21
COPY target/*.war /var/lib/jetty/webapps/app.war
EXPOSE 8080
CMD ["java", "-jar", "/usr/local/jetty/start.jar"]

