FROM hidetarou2013/jdk8tom8mvn3
MAINTAINER hidetarou2013 <hide1227@gmail.com>

EXPOSE 8080

#VOLUME /var/lib/mysql
#ADD usrlocaltomcatbin/catalina.sh /usr/local/tomcat/bin/
#ADD usrlocaltomcatconf/server.xml_workbook /usr/local/tomcat/conf/server.xml

# JDBC
ADD usrlocaltomcatlib/mysql-connector-java-5.1.38-bin.jar /usr/local/tomcat/lib/
ADD usrlocaltomcatlib/ojdbc6.jar /usr/local/tomcat/lib/

#CMD ["/bin/true"]
#ENTRYPOINT /usr/local/tomcat/bin/startup.sh
#ENTRYPOINT /usr/local/tomcat/bin/catalina.sh start
ENTRYPOINT /usr/local/tomcat/bin/catalina.sh run

# docker build -t hidetarou2013/jdk8tom8mvn3:v1.1 . 
# docker run --name jdk8tomcat8mvn3_1 -d -p 8888:8080 hidetarou2013/jdk8tom8mvn3:v1.1
# 
# docker cp /vagrant/ennea-1.0.0-BUILD-SNAPSHOT.war jdk8tomcat8mvn3_1:/usr/local/tomcat/webapps/ennea.war
#
# mkdir work
# cd work/
# git clone https://hidetarou2013@bitbucket.org/eit201608/enneaproject.git
# cd enneaproject/
# git checkout feature/ken00_mysql
# mvn compile package
# cp target/ennea-1.0.0-BUILD-SNAPSHOT.war /usr/local/tomcat/webapps/ennea.war
# ls -l /usr/local/tomcat/webapps
# 
# http://192.168.33.1:8888/ennea/loginC
