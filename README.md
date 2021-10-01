# Full Cycle PFA Docker - Desafio 1

Crie um programa utilizando sua linguagem de programação favorita que faça uma listagem simples do nome de alguns módulos do curso Full Cycle os trazendo de um banco de dados MySQL. Gere a imagem desse container e a publique no DockerHub.

Gere uma imagem do nginx que seja capaz que receber as solicitações http e encaminhá-las para o container.

Crie um repositório no github com todo o fonte do programa e das imagens geradas.

Crie um arquivo README.md especificando quais comandos precisamos executar para que a aplicação funcione recebendo as solicitações na porta 8080 de nosso computador. Lembrando que NÃO utilizaremos Docker-compose nesse desafio.

## How to run

`docker-compse up -d`

### MySQL

`docker run -d -e MYSQL_ROOT_PASSWORD=root -v $(pwd)/db_data:/var/lib/mysql -v $(pwd)/mysql:/docker-entrypoint-initdb.d mysql:5.7`

`docker run -d --init -it --network=pfa-network --name=pfa-mysql -v $(pwd)/db_data:/var/lib/mysql aferreira44/pfa-mysql`

### Node

`docker run --init aferreira44/pfa-node`

`docker run --init -p 8080:3000 aferreira44/pfa-node`

`docker run --init -it -p 8080:3000 aferreira44/pfa-node`

`docker logs container_id`

`docker network create pfa-network`

`docker run --init -it --network pfa-network -p 8080:3000 aferreira44/pfa-node`

## NGINX

`docker run --network pfa-network -p 8000:80 aferreira44/pfa-nginx`
