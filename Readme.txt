#Reference
  https://9mza.net/post/docker-apache-php-mysql#google_vignette

#Build and Run
docker-compose up -d --build
#Stop and Remove
docker-compose down --rmi all

#Cleanup
docker volume prune

#Network
docker network create --driver bridge app-network

docker exec -it mysql-server mysql -u root -p

source /home/db/all_databases.sql;

chmod 0444 /etc/mysql/conf.d/my.cnf


#-----------------------------------------------
# Start your mysql container like this:

$ docker run -d \
  --name mysql-server \
  -v /mysql/config:/etc/mysql/conf.d \
  -v /mysql/data:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=my-secret-pw \
  mysql:tag


$ mkdir data
$ ls -lnd data
drwxr-xr-x 2 1000 1000 4096 Aug 27 15:54 data
$ docker run -d \
  --name mysql-server \
  -v /mysql/config:/etc/mysql/conf.d \
  -v "$PWD/data":/var/lib/mysql \
  --user 1000:1000 \
  -e MYSQL_ROOT_PASSWORD=my-secret-pw \
  mysql:tag


# Creating database dumps:

$ docker exec mysql-server sh -c 'exec mysqldump --all-databases -uroot -p"$MYSQL_ROOT_PASSWORD"' > /path/all-databases.sql

#Restoring data from dump files:

$ docker exec -i mysql-server sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD"' < /path/all-databases.sql

#-----------------------------------------------
ALTER USER 'tomdev'@'%' IDENTIFIED BY 'Sup32A6m1nAtT0Md3v_V32777';
GRANT ALL privileges ON tomdev.* TO 'tomdev' @'%' with grant option;
FLUSH PRIVILEGES;

# Makefile
choco install make