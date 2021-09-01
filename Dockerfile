FROM tomcat:9
ADD http://172.31.208.1:9090/job/Build_Docker_Image/12/*.war  /usr/local/tomcat/webapps/
EXPOSE 8050
CMD ["catalina.sh", "run"]
