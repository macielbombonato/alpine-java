FROM alpine
MAINTAINER Maciel Escudero Bombonato <maciel.bombonato@gmail.com>

RUN apk --update add openjdk8-jre
ENV JAVA_HOME /usr/lib/jvm/default-jvm
CMD ["/usr/bin/java", "-version"]
