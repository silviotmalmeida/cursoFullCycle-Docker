#!/bin/bash

# criando a imagem
sudo docker build -t silviotmalmeida/laravel:latest .

# subindo o container
# o --rm apaga o container após o seu desligamento
# o -it permite o compartilhamento do terminal com o container
# o -d cria o container desanexado do terminal
# o --name permite nomear o container
# o -p permite o mapeamento de porta entre o host e o container
docker run --rm -d -it --name laravel -p 8000:8000 silviotmalmeida/laravel:latest