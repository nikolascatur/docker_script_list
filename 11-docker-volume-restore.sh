#membuat volume backup dl 
docker volume create mongodatabackup

docker container run --rm --name ubunturestore --mount "type=bind,source=/Users/investree/Project/playground/spring/programmer-zaman-now/docker/backup,destination=/backup" --mount "type=volume,source=mongodatabackup,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"