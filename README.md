## Creación de Imagen

1. Se creó el archibo *Dockerfile* y se agregó la línea *FROM node:10.10.0-slim*

2. Se ejecutó el comando *docker build -t cesar2017/orbis-training-docker:0.1.0 .*

## Subida de imagen a dockerhub

1. Se configuró el dockerhub en local con el comando *docker login --username=cesar2017 --email=anthony_ortiz@outlook.com *

2. Se ejecutó el comando *docker push cesar2017/orbis-training-docker*

### Cambiar versión de imagen docker

1. Se creo la nueva versión de la imagen con el comando *docker tag 7db9c916bc4e cesar2017/orbis-training-docker:0.2.0*

2. Se subió a dockerhub usando el comando *docker push cesar2017/orbis-training-docker:0.2.0*

