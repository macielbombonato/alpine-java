FROM alpine
MAINTAINER Maciel Escudero Bombonato <maciel.bombonato@gmail.com>

RUN apk --update add openjdk8
ENV JAVA_HOME /usr/lib/jvm/default-jvm

ENV MAVEN_VERSION="3.2.5" \
    M2_HOME=/usr/lib/mvn

RUN apk add --update wget && \
  cd /tmp && \
  wget "http://ftp.unicamp.br/pub/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz" && \
  tar -zxvf "apache-maven-$MAVEN_VERSION-bin.tar.gz" && \
  mv "apache-maven-$MAVEN_VERSION" "$M2_HOME" && \
  ln -s "$M2_HOME/bin/mvn" /usr/bin/mvn && \
  apk del wget && \
  rm /tmp/* /var/cache/apk/*

CMD ["/usr/bin/java", "-version"]
