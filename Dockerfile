FROM tomcat
COPY ./test2.war /usr/local/tomcat/webapps/
     

#FROM maven AS build
#WORKDIR /app
#COPY . .
#RUN mvn package

#FROM tomcat
#COPY --from=build /app/target/file.war /usr/local/tomcat/webapps
