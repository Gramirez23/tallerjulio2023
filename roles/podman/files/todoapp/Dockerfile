FROM quay.io/centos/centos:stream8

RUN dnf install -y java-1.8.0-openjdk && dnf clean all
RUN mkdir /opt/tomcat
RUN mkdir /opt/config
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.78/bin/apache-tomcat-9.0.78.tar.gz && tar xzvf apache-tomcat-9.0.78.tar && mv apache-tomcat-9.0.78.tar/* /opt/tomcat/.

ADD server.xml /opt/tomcat/conf/
ADD app.properties /opt/config/
ADD todo.war /opt/tomcat/webapps/
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]

