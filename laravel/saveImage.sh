#!/bin/bash

# criando a imagem
sudo docker build -t silviotmalmeida/laravel:latest .

# salvando a imagem
docker save silviotmalmeida/laravel > laravel.tar