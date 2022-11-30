#!/bin/bash

# criando a imagen
docker build -t silviotmalmeida/fullcycle:latest . -f Dockerfile

# salvando as imagens
docker save silviotmalmeida/fullcycle:latest > fullcycle.tar