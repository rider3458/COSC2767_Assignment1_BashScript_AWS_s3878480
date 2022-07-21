#!/bin/bash
sudo su -
sudo amazon-linux-extras install -y java-openjdk11
curl https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz --output /opt/maven.tar.gz
cd /opt
tar -xvzf /opt/maven.tar.gz
curl https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz --output /opt/tomcat.tar.gz
tar -xvzf /opt/tomcat.tar.gz
mv apache-maven-3.8.6 maven
mv apache-tomcat-9.0.64 tomcat
M2=/opt/maven
M2_HOME=/opt/maven/bin
JAVA_HOME=$(find /usr/lib -name java-11*)
export PATH=$PATH:$HOME/bin:$JAVA_HOME:$M2:$M2_HOME
./opt/tomcat/bin/startup.sh
