#!/bin/bash

# criando a imagem
docker build -t silviotmalmeida/node:latest .

# salvando a imagem
docker save silviotmalmeida/node > node.tar