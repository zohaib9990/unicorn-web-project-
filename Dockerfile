FROM tomcat:9.0
# Remove default Tomcat apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the built WAR file into Tomcat's webapps directory
COPY target/unicorn-web-project.war  /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (Tomcat default)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
