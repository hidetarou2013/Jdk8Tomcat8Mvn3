# Jdk8Tomcat8Mvn3

Jdk8Tomcat8Mvn3

## docker build

```
docker build -t hidetarou2013/jdk8tom8mvn3:v1.1 . 
```

## docker run

```
docker create --name mysqld_ennea_storage hidetarou2013/mysql-storage
docker run --volumes-from mysqld_ennea_storage --name mysqld_ennea -p 3306:3306 -e MYSQL_ROOT_PASSWORD=mysqladmin -e MYSQL_USER=kenshuu -e MYSQL_PASSWORD=kenshuu -e MYSQL_DATABASE=ennea -d hidetarou2013/mysql-server:BASE

docker run --name jdk8tomcat8mvn3_1 -d -p 8888:8080  --link mysqld_ennea:mysql hidetarou2013/jdk8tom8mvn3:v1.1
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

