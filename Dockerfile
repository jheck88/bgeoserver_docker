FROM tomcat:9-jre8-alpine

COPY resources/catalina.out /usr/local/tomcat/logs/catalina.out
COPY resources/geoserver.war /usr/local/tomcat/webapps/geoserver.war

EXPOSE 8080
EXPOSE 8443

#CMD ["/usr/bin/bash", "/usr/local/tomcat/bin/startup.sh"]


#CMD ["/usr/bin/tail", "-f", "/usr/local/tomcat/logs/catalina.out"]

CMD ["catalina.sh", "run"]
