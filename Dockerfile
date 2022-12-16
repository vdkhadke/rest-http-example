FROM openjdk:8u171-alpine3.7
RUN apk --no-cache add curl maven bash
COPY pom.xml .
COPY src ./src
RUN mvn clean package
RUN /bin/bash -c 'mv target/*.jar rest-http.jar'
CMD java ${JAVA_OPTS} -jar rest-http.jar
