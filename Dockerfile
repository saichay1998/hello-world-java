FROM tomcat
COPY /root/.m2/repository/com/example/maven-project/webapp/1.0-SNAPSHOT/webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/test.war
     

#FROM maven AS build
#WORKDIR /app
#COPY . .
#RUN mvn package

#FROM tomcat
#COPY --from=build /app/target/file.war /usr/local/tomcat/webapps
