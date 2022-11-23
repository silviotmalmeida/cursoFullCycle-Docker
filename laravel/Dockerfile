# definindo a imagem base
FROM php:7.4-cli

# definindo a pasta de trabalho a ser criada e focada no acesso
WORKDIR /var/www

# comandos a serem executados
# RUN apt-get update && \
#     apt-get install vim -y

# copiando arquivos da máquina local para o container
# COPY html/index.html /usr/share/nginx/html

# definindo o comando a ser executado após a inicialização
# comando fixo
# se existir um ENTRYPOINT em imagem anterior, este conteúdo substituirá o anterior
# ENTRYPOINT ["/docker-entrypoint.sh"]

# definindo o comando a ser executado após a inicialização
# comando variável, podendo ser substituído por argumento na inicialização do container
# se existir um ENTRYPOINT anterior, este conteúdo servirá de parâmetros para o ENTRYPOINT
# se existir um CMD em imagem anterior, este conteúdo substituirá o anterior
# CMD ["nginx", "-g", "daemon off;"]