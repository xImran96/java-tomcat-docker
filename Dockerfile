FROM tomcat:8
COPY **/*.war /usr/local/tomcat/webapps/
EXPOSE 8050
CMD ["catalina.sh", "run"]
