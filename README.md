## Creación de Imagen

1. Se creó el archibo *Dockerfile* y se agregó la línea *FROM node:10.10.0-slim*

2. Se ejecutó el comando **docker build -t cesar2017/orbis-training-docker:0.1.0 .**

## Subida de imagen a dockerhub

1. Se configuró el dockerhub en local con el comando **docker login --username=cesar2017 --email=anthony_ortiz@outlook.com **

2. Se ejecutó el comando **docker push cesar2017/orbis-training-docker**

### Cambiar versión de imagen docker

1. Se creo la nueva versión de la imagen con el comando **docker tag 7db9c916bc4e cesar2017/orbis-training-docker:0.2.0**

2. Se subió a dockerhub usando el comando **docker push cesar2017/orbis-training-docker:0.2.0**

### Crear un contenedor exponiendo el puerto 80 a través del puerto 1080 al hacer docker run

1. Se ejectó el comando **docker run -p 1080:80 cesar2017/orbis-training-docker:1.0.0**


### Agregar docker-compose para la construcción y ejecución de la imagen

1. Se creó el archivo **docker-compose.yml** y se modificó su contenido:

version: "2.0"
services:
   nginx:
     container_name: nginx
     image: nginx:alpine
     ports:
       - "1080:80"

2. Se ejecutó el comando **docker-compose -d -f ./docker-compose.yml up**

# DOCKER

1. Se utilizó el comando **docker run -v $PWD/app:/app  cesar2017/orbis-training-docker:3.0.0 npm install**

2. Se utilizaron los comandos:

 - **docker run -v $PWD/app:/app  -p "3030:3030" cesar2017/orbis-training-docker:3.0.0 npm start**
 - **docker run -v $PWD/app:/app  -p "35729:35729" cesar2017/orbis-training-docker:3.0.0 npm start**

 3. Se anignó el puerto **1042**

 4. Se utilizó el comando **docker run -v $PWD/app:/app cesar2017/orbis-training-docker:3.0.0 npm run release**