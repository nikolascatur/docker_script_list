# docker volume untuk menyimpan data docker secara persistence, di harddisk untuk melihat list docker volume
docker volume ls

#membuat volume 
# docker volume create {namavolume}
docker volume create mongovolume
#menghapus => docker volume rm {namavolume}
docker volume rm mongovolume

#untuk mount volumenya caranya 
docker container create --name mongodata --publish 27017:27017 --mount "type=volume,source=mongovolume,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=niko --env MONGO_INITDB_ROOT_PASSWORD=niko mongo:latest