# definindo a imagem base
FROM nginx:latest

# definindo a pasta de trabalho a ser criada e focada no acesso
WORKDIR /app

# comandos a serem executados
RUN apt-get update && \
    apt-get install vim -y

# copiando arquivos da máquina local para o container
COPY html/index.html /usr/share/nginx/html