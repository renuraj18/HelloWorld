FROM alpine:latest
#ADD HelloWorld.class HelloWorld.class
RUN apk --update add openjdk8-jre
RUN javac HelloWorld.java
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]
