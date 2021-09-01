FROM tomcat:9
ADD C:\Users\Hp\.jenkins\workspace\Build_Docker_Image\target\*.war  /usr/local/tomcat/webapps/
EXPOSE 8050
CMD ["catalina.sh", "run"]
