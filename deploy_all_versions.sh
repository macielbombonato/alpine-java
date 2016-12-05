#!/usr/bin/env bash
echo '######################################'
echo '#          Criando imagens           #'
echo '######################################'
./build_docker_image.sh 1
./build_docker_image.sh 2

echo '################################################'
echo '#          Autenticando no Docker HUB          #'
echo '################################################'
docker login

echo '#######################################################'
echo '#          Enviando imagem para o Docker HUB          #'
echo '#######################################################'
docker push macielbombonato/alpine-java:openjdk8
docker push macielbombonato/alpine-java:openjdk8-jre
docker push macielbombonato/alpine-java:latest