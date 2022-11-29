#!/bin/bash

# criando a imagem
docker build -t silviotmalmeida/golang:dev . -f Dockerfile.dev

# salvando as imagens
docker save silviotmalmeida/golang:dev > golang.dev.tar