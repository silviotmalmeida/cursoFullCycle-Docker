#!/bin/bash

# carregando as imagens
docker load < laravel.prod.tar
docker load < nginx.prod.tar