#!/bin/bash

# criando a imagem
sudo docker build -t silviotmalmeida/node:latest . -f Dockerfile.prod

# salvando a imagem
docker save silviotmalmeida/node > node.tar