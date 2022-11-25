#!/bin/bash

# criando a imagem
sudo docker build -t silviotmalmeida/laravel:dev .

# salvando a imagem
docker save silviotmalmeida/laravel:dev > laravel.tar