#!/usr/bin/env bash
read -p "Choose a version: (1) *openjdk8-jre (2) openjdk8: " CONDITION;
if [[ ("$CONDITION" == "1") ]]; then
	VERSION="openjdk8-jre"
elif [[ ("$CONDITION" == "2") ]]; then
	VERSION="openjdk8"
else
	VERSION="openjdk8-jre"
fi

echo 'Choosed version: ' $VERSION

echo '#####################################'
echo '#         running for tests         #'
echo '#####################################'
docker run -it macielbombonato/alpine-java:$VERSION /bin/ash
