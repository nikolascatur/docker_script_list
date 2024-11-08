# untuk membackup tidak bisa otomatis manual 
# di stop dulu docker nya => docker container stop mongodata
docker container stop mongodata

#membuat container baru untuk back up volume
#buat folder dulu
mkdir backup
pwd # => dpt path folder /Users/investree/Project/playground/spring/programmer-zaman-now/docker/backup
docker container create --name nginxbackup --mount "type=bind,source=/Users/investree/Project/playground/spring/programmer-zaman-now/docker/backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" nginx:latest

# masuk ke dalam nginx backup
docker container exec -i -t nginxbackup /bin/bash
ls -l 

# masuk dl kedalam folder kosong tempat nyimpan backup 
cd backup
# di zip file backupnya 
tar cvf /backup/backup.tar.gz /data

# stop nginxbackup 
docker container stop nginxbackup

# remove
docker container rm nginxbackup

# start mongo volume
docker container start mongodata

# Ada perintah sekaligus untuk merangkum perintah diatas
#pake image ubuntu yang sekali jalan 
docker image pull ubuntu:latest
docker container stop mongodata
docker container run --rm --name ubuntubackup --mount "type=bind,source=/Users/investree/Project/playground/spring/programmer-zaman-now/docker/backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" ubuntu:latest tar cvf /backup/backup2.tar.gz /data

