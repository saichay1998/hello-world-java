FROM tomcat
COPY ./test.war /usr/local/tomcat/webapps #project-1-for deploying a war file into a docker conmtainer

#FROM maven AS build
#WORKDIR /app
#COPY . .
#RUN mvn package

#FROM tomcat
#COPY --from=build /app/target/file.war /usr/local/tomcat/webapps
