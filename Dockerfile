FROM tomcat:9
ADD ${JENKINS_HOME}job/Build_Docker_Image/7/artifact/target/*.war  /usr/local/tomcat/webapps/
EXPOSE 8050
CMD ["catalina.sh", "run"]
