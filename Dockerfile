FROM tomcat:8
COPY  ${JENKINS_HOME}/workspace/*.war /usr/local/tomcat
EXPOSE 8050
CMD ["catalina.sh", "run"]
