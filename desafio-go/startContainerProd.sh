#!/bin/bash

# subindo o container
# o --rm apaga o container após o seu desligamento
# o -it permite o compartilhamento do terminal com o container
# o -d cria o container desanexado do terminal
# o --name permite nomear o container
# o -p permite o mapeamento de porta entre o host e o container
# o -v permite o compartilhamento de pasta entre o host e o container
docker run --rm -it --name fullcycle silviotmalmeida/fullcycle:latest