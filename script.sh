#!/bin/bash
sudo su -
sudo amazon-linux-extras install -y java-openjdk11
sudo yum install -y git
curl https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz --output /opt/maven.tar.gz
cd /opt
tar -xvzf /opt/maven.tar.gz
curl https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.22/bin/apache-tomcat-10.0.22.tar.gz --output /opt/tomcat.tar.gz
tar -xvzf /opt/tomcat.tar.gz
mv apache-maven-3.8.6 maven
mv apache-tomcat-10.0.22 tomcat
M2=/opt/maven
M2_HOME=/opt/maven/bin
JAVA_HOME=$(find /usr/lib -name java-11*)
echo PATH=$PATH:$HOME/bin:$JAVA_HOME:$M2:$M2_HOME >> ~/.bashrc
/opt/tomcat/bin/startup.sh
