FROM centos:6
 
MAINTAINER Justin Walsh 
 
ENV JAVA_HOME /opt/jdk/jre
ENV PATH $PATH:/opt/jdk/jre/bin
 
RUN yum -y update && yum -y install wget tar
 
RUN wget --no-check-certificate -O /tmp/pkg.tar.gz --header "Cookie: oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/7u80-b15/jdk-7u80-linux-x64.tar.gz && \
    tar -zxf /tmp/pkg.tar.gz --xform='s/[^\/]*/jdk/' -C /opt && \
    rm -rf /tmp/*
