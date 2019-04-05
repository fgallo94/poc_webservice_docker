
FROM java:8-jdk-alpine

COPY ./target/webservice-0.0.1.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch webservice-0.0.1.jar'

ENTRYPOINT ["java","-jar","webservice-0.0.1.jar"]