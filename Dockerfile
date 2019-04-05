FROM dockerfile/java:oracle-java8
VOLUME /tmp
ADD target/webservice-0.0.1.jare target/app.jar
RUN bash -c 'touch target/app.jar'
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=local","target/app.jar"]