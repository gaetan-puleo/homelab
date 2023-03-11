#!/bin/bash

source .env

echo $MYSQL_USER
# Turn On maintenance mode for Nextcloud

docker compose exec --user www-data nextcloud php occ maintenance:mode --on 

################
# backup files
################
mkdir backup 
sudo rsync -aAvX  --mkpath --delete volumes/nextcloud ${BACKUP_DIR}

#################
# backup database  
#################



# backup mariadb
docker compose exec -ti nextcloud-db mysqldump  --single-transaction -u ${MYSQL_USER} --password="${MYSQL_PASSWORD}"  $MYSQL_DATABASE > ${BACKUP_DIR}/dump.sql

docker compose exec --user www-data nextcloud php occ maintenance:mode --off 



