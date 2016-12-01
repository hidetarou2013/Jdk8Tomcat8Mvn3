# Jdk8Tomcat8Mvn3

Jdk8Tomcat8Mvn3

## docker build

```
docker build -t hidetarou2013/jdk8tom8mvn3:v1.1 . 
```

## docker run

```
docker run --name jdk8tomcat8mvn3_1 -d -p 8888:8080 hidetarou2013/jdk8tom8mvn3:v1.1
```

## docker cp

``` 
docker cp /vagrant/ennea-1.0.0-BUILD-SNAPSHOT.war jdk8tomcat8mvn3_1:/usr/local/tomcat/webapps/ennea.war
```

## application build & deploy


```
# mkdir work
# cd work/
# git clone https://hidetarou2013@bitbucket.org/eit201608/enneaproject.git
# cd enneaproject/
# git checkout feature/ken00_mysql
# mvn compile package
# cp target/ennea-1.0.0-BUILD-SNAPSHOT.war /usr/local/tomcat/webapps/ennea.war
# ls -l /usr/local/tomcat/webapps
```

## URL 

http://192.168.33.1:8888/ennea/loginC

