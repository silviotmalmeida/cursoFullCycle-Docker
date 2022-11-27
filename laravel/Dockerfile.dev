# definindo a imagem base
FROM php:7.4-cli

# definindo a pasta de trabalho a ser criada e focada no acesso
WORKDIR /var/www

# comandos a serem executados
## instalando os pré-requisitos
RUN apt-get update && \
    apt-get install libzip-dev -y && \
    docker-php-ext-install zip

## instalando o composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');"

## instalando o laravel
RUN php composer.phar create-project --prefer-dist laravel/laravel laravel

# definindo o comando a ser executado após a inicialização
# comando fixo
# se existir um ENTRYPOINT em imagem anterior, este conteúdo substituirá o anterior
# iniciando o servidor de desenvolvimento do laravel
ENTRYPOINT [ "php","laravel/artisan","serve" ]

# definindo o comando a ser executado após a inicialização
# comando variável, podendo ser substituído por argumento na inicialização do container
# se existir um ENTRYPOINT anterior, este conteúdo servirá de parâmetros para o ENTRYPOINT
# se existir um CMD em imagem anterior, este conteúdo substituirá o anterior
# complementando com a informação do host e porta
CMD [ "--host=0.0.0.0", "--port=8000" ]