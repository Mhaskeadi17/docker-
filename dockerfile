FROM centos:7
RUN yum update -y
RUN yum install java openjdk 
ADD https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz /opt
WORKDIR /opt/
RUN tar -xvzf apache-tomcat-8.5.100.tar.gz -c /opt
WORKDIR /opt/apache-tomcat-8.5.100/bin
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war /opt/apache-tomcat-8.5.37.tar.gz/webapps/
ENV Name="docker_project"
EXPOSE 8080
CMD ["./catalina.sh","run"]
