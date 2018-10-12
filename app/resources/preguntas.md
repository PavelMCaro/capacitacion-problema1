# GIT
## Ejercicio 1
Capacitación: Git, bash y docker
Integrantes:
 - Anthony César Ortiz Arteaga
 - Pável Andréi Montalvo Caro
 - Steven Ortiz

# DOCKER
- ¿Porqué es necesario crear un contenedor con esta bandera **-it** ? ¿Qué pasa si no le pongo **-it**?

    Nos ayuda a tener acceso al contenedor de manera interactiva.

- ¿Para qué sirve ejecutar el comando bash al eejcutar una imagen?

    Para poder ingresar a los archivos propios de la imagen.

- ¿Cuál es la diferencia entre **docker ps** y **docker ps -a**?

    **docker ps** nos lista los contenedores **up**, mientras que **docker ps -a** nos muestra todos los contenedores así no estén en background.

- Comando para ejecutar el contenedor

    1. Se modifica el archivo *Dockerfile* agregando los comandos **RUN ls** y **RUN cat preguntas-md**

    2. Luego se ejecuta el comando **docker build <nombre_imagen>:<tag> .**

## PARTE 4

### 1. ¿Qué importancia tiene los tags en un proyecto?
Nos ayudan a diferenciar versiones del proyecto.
### 2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
El tag normal puede ser de la forma `<tag>`, mientras que el tag anotado es de la forma `<tag>_mesg`, donde en mesg podemos añadir una descripción al tag.

### 3. ¿Cómo se sube todos los tags de git que hay en mi local?
Ejecutando el comando **git push --tags**
### 4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
No, solo es necesario la primera vez.
### 5. ¿Qué es y para qué sirve docker?
Es una tecnología de creación de contenedores, que permite la creación y el uso de contenedores de Linux.
### 6. ¿Cuál es la diferencia entre docker y VirtualBox (virtualización)?
VirtualBox es una aplicación de virtualización que crea máquinas virtuales que están aisladas a nivel de hardware. Docker es una aplicación de contenedorización que aísla aplicaciones a nivel de software.
### 7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
Sí, se debe de tener siempre una imagen base.
### 8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
Para que se pueda comunicar con el usuario en **dockerhub**
### 9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?
Se crea con la versión **latest**
## PARTE 5

### 1. ¿Cuál es la diferencia entre una imagen y un contenedor?
Una imagen es un archivo inerte, inmutable, que es esencialmente una instantánea de un contenedor.
Para usar una metáfora de programación, si una imagen es una clase, entonces un contenedor es una instancia de una clase, un objeto de tiempo de ejecución.
### 2. ¿Cómo listo las imágenes que hay en mi computadora?
Con el comando **docker images**
### 3. ¿Cómo salgo de un contenedor de docker?
Con el comando **exit**
### 4. ¿Se elimina el contenedor al salir de ella?
No, no se elimina, solo se apaga.
### 5. ¿Cómo elimino un contenedor?
Con el comando **docker rm -f <nombre_contenedor>**
### 6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
Para entrar en modo interactivo a la terminal y eliminar el archivo.
### 7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
Con el comando **docker run -it (nombre_imagen):(tag) bash**
### 8. ¿Cómo se comenta una linea de código en Dockerfile?
Con el símbolo **#**

## PARTE 6

### 1. ¿Qué es NGINX?
Es un servidor web de código abierto
### 2. ¿Cómo expongo puertos en docker?
Modificando el archivo **Dockerfile**, y añadiendo el comando **EXPOSE**
### 3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?
Con el comando **-p "(puerto_local):(puerto_contenedor)"**
### 4. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?
Con el comando **docker run -d -p "(puerto_local):(puerto_contenedor)" (nombre_imagen):(tag)**