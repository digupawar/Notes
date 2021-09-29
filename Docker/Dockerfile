Deploy to appache2:
FROM httpd:2.4
RUN rm -rf /usr/local/apache2/htdocs/index.html
COPY index.html /usr/local/apache2/htdocs/

Deploy to Tomcat:
FROM tomcat:9.0
RUN rm -rf /usr/local/tomcat/webapps/*
COPY vprofile-v1.war /usr/local/tomcat/webapps/vprofile-v1.war
EXPOSE 8080
CMD ["catalina.sh","run"]
