# Nginx, PHP e MySQL

Dockerizando serviços básicos para rodar nginx com php e mysql.

## Tecnologias

- nginx
- PHP 8.3
- MySQL

## Como usar

Primeiro basta clonar o repositório

`git clone git@github.com:Elivandro/docker-with-nginx-php83-mysql.git`

Agora entre na pasta com o terminal 
`cd docker-with-nginx-php83-mysql`

para utilizar no ambiente de desenvolvimento
`desative a extensão opcache do php para não ter problemas com cache de scripts no arquivo /docker/php/Dockerfile`

renomeie o arquivo de variaveis
`cp .env.example .env`

E agora basta rodar o docker

`docker-compose up -d`

só copiar os arquivos para `./public` Pronto, sucesso!

Acesse o http://localhost:8080
