FROM tomcat:9
ADD ${BUILD_URL}/*.war  /usr/local/tomcat/webapps/
EXPOSE 8050
CMD ["catalina.sh", "run"]
