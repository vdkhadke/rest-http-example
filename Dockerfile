FROM openjdk:8-jdk-alpine
RUN apk --no-cache add curl maven
COPY target/*.jar /opt/rest-http.jar
CMD java ${JAVA_OPTS} -jar /opt/rest-http.jar
