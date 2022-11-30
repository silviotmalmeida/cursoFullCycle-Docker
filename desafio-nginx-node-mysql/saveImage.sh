#!/bin/bash

# criando as imagens
docker build -t silviotmalmeida/node:latest . -f Dockerfile
docker build -t silviotmalmeida/nginx:latest . -f Dockerfile.nginx

# salvando as imagens
docker save silviotmalmeida/node:latest > node.latest.tar
docker save silviotmalmeida/nginx:latest > nginx.latest.tar