# Comandos Docker

Para listar imagenes descargadas
```bash
docker image ls
```

Para listar contenedores ejecutandose
```bash
docker ps
```

Para listar contenedores detenidos

```bash
docker ps -a
```

Para descargar una imagen del https://hub.docker.com/

```bash
docker pull nginx
docker pull ubuntu
docker pull mysql
docker pull nginx:alpine -> para descargar una imagen con un tag especifico
```

Para ejecutar un contenedor

```bash
docker run ubuntu
docker run -d -p 80:80 nginx -> para correr en segundo plano y exponiendo el puerto 80
docker run -dit ubuntu -> para correr un contenedor que no expone un servicio
docker run -dit --name ubuntu ubuntu -> correr contenedor ubuntu dando el nombre de ubuntu
```

Como detener un contenedor

```bash
docker stop id_contenedor/nombre_contenedor
```

Como borrar un contenedor(Este no debe estar corriendo)

```bash
docker rm id_contenedor/nombre_contenedor
```

Como borrar todos los contenedores que estan detenidos

```bash
docker container prune
```

Como correr MySql

```bash
docker run -e MYSQL_ROOT_PASSWORD=rootpassword -d mysql
```

Como entrar dentro de la consola de un contenedor

```bash
docker exec -it id_contenedor/nombre_contenedor bash
```

Como detener todos los contenedores que se estan ejecutando

```bash
docker stop $(docker ps -q) -> Sirve para Mac/Linux/Git Bash
```

# Dockerfile

Como compilar una imagen apartir de un Dockerfile

```bash
docker build -t nombre_imagen:tag .
```

# Docker Compose

Este comando sirve para descargar las imagenes usadas en el archivo docker-compose.yml
```bash
docker-compose pull
```

Este comando nos permite ejecutar los contenedores que se encuentran en el archivo docker-compose.yml

```bash
docker-compose up
```

Entrar desde el navegador desde

```bash
http://localhost
```

Para detener y borrar los contenedores

```bash
docker-compose down
```

Para listar los contenedores

```bash
docker-compose ps
```