#Pratica 2. Contenedores on volumenes nombrados

## Contenedor de mariadb sin volumen

**para utilizar en cmd**

docker run --name server-mariadb `
-dp 3310:3306 `
--env MARIADB_ROOT_PASSWORD=12345 `
--env MARIADB_USER=user-ejemplo `
--env MARIADB_PASSWORD=12345 `
--env MARIADB_DATABASE=word-db `
8763a63
```

**para shell en MAC/linux**

```
docker run --name server-mariadb \
-dp 3310:3306 '
--env MARIADB_ROOT_PASSWORD=12345 \
--env MARIADB_USER=user-ejemplo \
--env MARIADB_PASSWORD=12345 \
--env MARIADB_DATABASE=word-db \
8763a63
```

## Comandos esenciales
`docker ps` - visualiza los contenedores en ejecucion
`docker container ls` - - visualizalos contenedores en ejecucion
`docker ps -a`- visualiza todos los contenedores esten o no en ejecucion
`docker container ls -a`- visualiza todos los contenedores en ejecucion

## Creacion de volumenes

'''docker
docker volume ls
docker volume create volumen-mariadb
'''

```docker

```docker run --name server-mariadb `
-dp 3310:3306 `
--env MARIADB_ROOT_PASSWORD=12345 `
--env MARIADB_USER=user-ejemplo `
--env MARIADB_PASSWORD=12345 `
--env MARIADB_DATABASE=word-db `
-v word-db-vol:/var/lib/mysql `
8763a63

/var/lib/mysql

```docker
docker run --name phpmyadmin `
-dp 8080:80 `
--env PMA_ARBITRABY=1 `
5ef994
```

## Crear una red (network)
`docker network create nombre_red -> Crea una red
`docker network ls -> lista las redes

##  Agregar equipos a la red
'docker network connect nombre-red contenedor'
'docker network inspect nombre-red' ->Informacion de la red

