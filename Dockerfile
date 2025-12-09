# Use the official Tomcat image as the base image
FROM tomcat:9.0-jdk11

# Modern metadata labels
LABEL description="This Dockerfile creates a custom Tomcat Docker image" 
LABEL author="Murtuza Ansari" 
LABEL email="murtuza2696@gmail.com"

# Environment variables in correct format
ENV APP_TYPE=JAVA
ENV COMPANY_TYPE=IT
ENV COMPANY_EMAIL=murtuza@cloudcontainer.in

# Copy the WAR file into the Tomcat webapps directory
COPY target/java-application-1.0.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Command to start Tomcat
CMD ["catalina.sh", "run"]

