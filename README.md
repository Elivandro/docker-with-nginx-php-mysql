# Nginx, PHP e MySQL

Dockerizando serviços básicos para rodar nginx, php e mysql.

## Tecnologias

- Nginx 1.29
- PHP 8.4 + xdebug
- MySQL 8

## Como usar

Primeiro basta clonar o repositório

`git clone git@github.com:Elivandro/docker-with-nginx-php-mysql.git`

Agora entre na pasta com o terminal:

`cd docker-with-nginx-php-mysql`

para utilizar no ambiente de desenvolvimento
certifique-se de desativar a extensão opcache no arquivo /docker/php/dockerfile para não ter problemas com cache em desenvolvimento.

```
PHP_OPCACHE_ENABLE=0
PHP_OPCACHE_ENABLE_CLI=0
```

renomeie o arquivo de variaveis e defina as váriaveis:

`cp .env.example .env`

faça o build da imagem:

`docker compose build --no-cache`

E agora basta rodar o docker, use `-d` para liberar o console:

`docker compose up`

só copiar os arquivos para `./html/public` Pronto, sucesso!

Acesse o http://localhost:80

para desativar os serviço rode, use `-v`para excluir os containers e seus respectivos dados:

`docker compose down`
