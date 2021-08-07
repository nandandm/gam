FROM ubuntu:16.04 AS multistage
MAINTAINER "nandandm"
USER ubuntu
Label version="1.1" type="java based application"
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install git -y
WORKDIR /home
RUN apt-get install maven
RUN git clone 




ADD https://downloads.apache.org/tomcat/tomcat-8/v8.5.69/bin/apache-tomcat-8.5.69-fulldocs.tar.gz


ADD apache-tomcat-8.5.38.tar.gz /root
COPY target/gamutgurus.war /root/apache-tomcat-8.5.38/webapps
ENTRYPOINT /root/apache-tomcat-8.5.38/bin/startup.sh && bash

