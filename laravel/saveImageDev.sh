#!/bin/bash

# criando a imagem
docker build -t silviotmalmeida/laravel:dev . -f Dockerfile.dev

# salvando a imagem
docker save silviotmalmeida/laravel:dev > laravel.dev.tar