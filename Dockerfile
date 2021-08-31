FROM tomcat:8
COPY **/*.war /usr/local/tomcat
EXPOSE 8050
CMD ["catalina.sh", "run"]
