FROM tomcat:8
ADD ${JENKINS_HOME}/workspace/*.war  /usr/local/tomcat
EXPOSE 8050
CMD ["catalina.sh", "run"]
