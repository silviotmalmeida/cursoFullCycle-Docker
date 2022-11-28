#!/bin/bash

# subindo os 
# o -f a ponta para o arquivo yaml
# o -d cria os containers desanexados do terminal
docker-compose -f docker-compose-prod.yaml up -d --remove-orphans