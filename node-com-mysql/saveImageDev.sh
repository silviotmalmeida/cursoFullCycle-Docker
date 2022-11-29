#!/bin/bash

# criando a imagem
docker build -t silviotmalmeida/node:dev . -f Dockerfile.dev

# salvando a imagem
docker save silviotmalmeida/node:dev > node.dev.tar