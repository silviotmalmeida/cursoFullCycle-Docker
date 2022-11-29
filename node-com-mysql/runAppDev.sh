#!/bin/bash

# definindo permissoes da pasta de código-fonte
docker exec node chmod 777 -R .
sleep 1

# atualizando as dependências
docker exec node npm install

# iniciando o app
docker exec node node index.js