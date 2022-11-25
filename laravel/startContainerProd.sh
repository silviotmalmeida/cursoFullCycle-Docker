#!/bin/bash

# criando as imagens
# docker build -t silviotmalmeida/laravel:prod . -f Dockerfile.prod
# docker build -t silviotmalmeida/nginx:prod . -f Dockerfile.nginx.prod

# criando a rede
docker network create laranet

# subindo os containers
# o --rm apaga o container após o seu desligamento
# o -it permite o compartilhamento do terminal com o container
# o -d cria o container desanexado do terminal
# o --name permite nomear o container
# o -p permite o mapeamento de porta entre o host e o container
# o -v permite o compartilhamento de pasta entre o host e o container
docker run --rm -d -it --name laravel --network laranet silviotmalmeida/laravel:prod
docker run --rm -d -it --name nginx --network laranet -p 8080:80 silviotmalmeida/nginx:prod