# Image docker pour crée un serveur reveal.js

## Construisez votre image
```shell
docker build --tag reveal.js .
```

## Exécutez votre image

```shell
docker run -d --name=reveal.js -v `$PWD`:/app -p 1947:1947 reveal.js:latest
```

## Docker-compose
```yml
version: '3'
services:
  reveal.js:
    build: .
    container_name: reveal.js
    ports:
      - '1947:1947'
    volumes:
      - '${PWD}:/app'
```

## Ouvrir la présentation
Ouvrez le reveal à l'adresse suivante :  
>http://localhost:1947  
>ou  
>http://IP_LOCAL:1947  

Un popup va apparaître pour le contrôle a distance  
exemple :  
>http://localhost:1947/notes/9107650607493798  
>ou  
>http://IP_LOCAL:1947/notes/9107650607493798  
