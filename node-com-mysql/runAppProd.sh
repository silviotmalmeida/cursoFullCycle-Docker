#!/bin/bash

# definindo permissoes da pasta de código-fonte
docker exec node chmod 777 -R .
sleep 1

# iniciando o app
docker exec node node index.js