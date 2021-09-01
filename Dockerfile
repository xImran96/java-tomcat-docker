FROM tomcat:9
ADD http://localhost:9090/job/Build_Docker_Image/11//*.war  /usr/local/tomcat/webapps/
EXPOSE 8050
CMD ["catalina.sh", "run"]
