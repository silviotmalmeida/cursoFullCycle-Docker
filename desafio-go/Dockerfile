# iniciando o primeiro estágio de construção
# definindo a imagem base e nomeando como stage1
FROM golang:latest AS stage1

# definindo a pasta de trabalho a ser criada e focada no acesso
WORKDIR /src/app

# copiando o arquivo de configuração customizado
COPY app/main .

# definindo o comando a ser executado após a inicialização
CMD [ "go",  "build", "main.go" ]

# -------------------------------------------------------------------------------
# iniciando o segundo estágio de construção
# definindo a imagem base otimizada
FROM hello-world:latest

# copiando a pasta criada no primeiro estágio para o segundo estágio
COPY --from=stage1 /src/app .

# definindo o comando a ser executado após a inicialização
CMD ["/main"]