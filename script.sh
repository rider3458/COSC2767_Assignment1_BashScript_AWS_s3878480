sudo amazon-linux-extras install java-openjdk11
curl https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz --output /opt/maven.tar.gz
tar -xvzf /opt/maven.tar.gz
curl https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz --output /opt/tomcat.tar.gz
tar -xvzf /opt/tomcat.tar.gz
ln -s /opt/tomcat/bin/startup.sh /usr/local/bin/tomcatup
ln -s /opt/tomcat/bin/shutdown.sh /usr/local/bin/tomcatdown
tomcatup
