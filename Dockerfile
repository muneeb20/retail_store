FROM java:8-jdk-alpine

COPY ./target/retail-0.0.1-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch retail-0.0.1-SNAPSHOT.jar'

ENTRYPOINT ["java","-jar","retail-0.0.1-SNAPSHOT.jar"]