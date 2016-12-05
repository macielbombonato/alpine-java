#!/usr/bin/env bash
if [[ ("$1" == "1") || ("$1" == "2") ]]; then
   CONDITION=$1
else
   read -p "Choose a version: (1) *openjdk8-jre (2) openjdk8: " CONDITION;
fi

if [[ ("$CONDITION" == "1") ]]; then
	VERSION="openjdk8-jre"

	echo '################################################'
	echo '#        building latest version image         #'
	echo '################################################'
	docker rmi $(docker images macielbombonato/alpine-java:latest -q)
	docker build --rm -t macielbombonato/alpine-java:latest -f openjdk8-jre/Dockerfile .
elif [[ ("$CONDITION" == "2") ]]; then
	VERSION="openjdk8"
else
	VERSION="openjdk8-jre"
fi

echo 'Choosed version: ' $VERSION

echo '#######################################'
echo '#         deleting old images         #'
echo '#######################################'
docker rmi $(docker images macielbombonato/alpine-java:$VERSION -q)

echo '#################################'
echo '#        building image         #'
echo '#################################'
docker build --rm -t macielbombonato/alpine-java:$VERSION -f $VERSION/Dockerfile .
