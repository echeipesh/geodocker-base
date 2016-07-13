FROM centos:7

MAINTAINER Nathan Zimmerman, npzimmerman@gmail.com

RUN yum install -y wget curl unzip which nc

# JAVA
ENV JAVA_HOME /usr/java/jdk1.8.0_45
ENV PATH $PATH:$JAVA_HOME/bin

RUN set -x \
  && curl -# -LO 'http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm' -H 'Cookie: oraclelicense=accept-securebackup-cookie' \
  && rpm -Uvh jdk-8u45-linux-x64.rpm \
  && rm -rf jdk-8u45-linux-x64.rpm
