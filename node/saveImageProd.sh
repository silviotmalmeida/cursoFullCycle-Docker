#!/bin/bash

# criando a imagem
sudo docker build -t silviotmalmeida/node:prod . -f Dockerfile.prod

# salvando a imagem
docker save silviotmalmeida/node:prod > node.tar