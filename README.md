# Image docker to create a reveal.js server

## Build your image
```shell
docker build --tag reveal.js .
```

## Execute your image

```shell
docker run -d --name=reveal.js -v `$PWD`:/app -p 1947:1947 reveal.js:latest
```

## Docker-composes
```yml
version: '3'.
services:
  reveal.js:
    build: .
    container_name: reveal.js
    ports:
      - '1947:1947'
    volumes:
      - ${PWD}:/app
```

## Open the presentation
Open the reveal at the following address:  
>http://localhost:1947  
>or  
>http://IP_LOCAL:1947  

A popup will appear for remote control  
For example:  
>http://localhost:1947/notes/9107650607493798  
>or  
>http://IP_LOCAL:1947/notes/9107650607493798  
