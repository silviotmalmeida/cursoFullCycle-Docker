#!/bin/bash

echo 'Testando...'
docker  exec -it golang go run main.go

echo 'Compilando...'
docker  exec -it golang go build main.go

echo 'Executando...'
docker  exec -it golang bash -c "./main"
