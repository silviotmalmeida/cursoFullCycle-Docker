#!/bin/bash

# criando as imagens
docker build -t silviotmalmeida/laravel:prod . -f Dockerfile.prod
docker build -t silviotmalmeida/nginx:prod . -f Dockerfile.nginx.prod

# salvando as imagens
docker save silviotmalmeida/laravel:prod > laravel.tar
docker save silviotmalmeida/nginx:prod > nginx.tar