# paramter --mount berfungsi untuk melakukan sharing folder antara docker dengan system operasi
# param type=[mount | bind | volume] source = [Lokasi file atau folder di sistem host] 
# param destination = [Lokasi file atau folder di container]
# param readonly = [Jika ada, maka file atau folder hanya bisa dibaca di container, tidak bisa ditulis]

#docker container create --name mongo2 --publish 27017:27017 --mount "type=bind,source=folder,destination=folder,readonly" mongo:latest
docker container create --name mongo2 --publish 27017:27017 --mount "type=bind,source=/Users/investree/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=niko --env MONGO_INITDB_ROOT_PASSWORD=niko mongo:latest