FROM openjdk:8u171-alpine3.7
RUN apk --no-cache add curl maven
RUN mvn clean package
COPY target/*.jar rest-http.jar
CMD java ${JAVA_OPTS} -jar rest-http.jar
