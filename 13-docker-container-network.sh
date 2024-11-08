# mengkonekan network dengan container nya
#membuat network nya dl 
docker network create --driver bridge mongonetwork
# membuat container mongo nya tidak perlu di publish karena mau akses dari mongo express nya
docker container create --name mongoDB --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=niko --env MONGO_INITDB_ROOT_PASSWORD=niko mongo:latest

# pull image mongo express
docker image pull mongo-express:latest

# create image mongo express
docker container create --name mongoDbExpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://niko:niko@mongoDB:27017/" mongo-express:latest

docker run --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://niko:niko@mongoDB:27017/" mongo-express:latest

docker container start mongoDB
docker container start mongoDbExpress

#cara disconnect container dari network
# docker network disconnect {nameNetwork} {namaContainer}
docker network disconnect mongonetwork mongoDB

#connect ke network container yang sudah di buat 
# docker network connect {nameNetwrok} {namaContainer}
docker network connect mongonetwork mongoDB


#check log 
docker container logs mongoDB