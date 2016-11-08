# VERSION               0.0.1
FROM ubuntu:14.04

MAINTAINER Nicolas Espejo <nicolas.espejo@globant.com>

RUN apt-get update && apt-get install -y \
	wget \
	default-jdk

RUN wget http://apache.dattatec.com/tomcat/tomcat-7/v7.0.72/bin/apache-tomcat-7.0.72.tar.gz
RUN tar xvzf apache-tomcat-7.0.72.tar.gz
RUN mv apache-tomcat-7.0.72 /opt/tomcat
RUN echo 'export JAVA_HOME=/usr/lib/jvm/default-java' >> ~/.bashrc
RUN echo 'export CATALINA_HOME=/opt/tomcat' >> ~/.bashrc

#Entrypoint
ADD scripts/entrypoint.sh /home/entrypoint.sh
RUN chmod +x /home/entrypoint.sh
ENTRYPOINT ["/home/entrypoint.sh"]

EXPOSE 8080