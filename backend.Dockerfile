FROM tomcat:11.0-jdk21

ADD sample.war /usr/local/tomcat/webapps/

EXPOSE 80
CMD ["catalina.sh", "run"]
