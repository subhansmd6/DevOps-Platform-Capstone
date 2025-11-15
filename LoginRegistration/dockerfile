FROM tomcat:9.0-jdk17

# Clean default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file from Jenkins into the Tomcat webapps folder
COPY . /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]

