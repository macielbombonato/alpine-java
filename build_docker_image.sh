#!/usr/bin/env bash
echo '#######################################'
echo '#         deleting old images         #'
echo '#######################################'
docker rmi $(docker images macielbombonato/alpine-java -q)

echo '#################################'
echo '#        building image         #'
echo '#################################'
docker build -t macielbombonato/alpine-java .
