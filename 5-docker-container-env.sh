# untuk menambah kan environment variable di dalam container
# docker container create --name {containername} --publish hostport:port --env KEY="value" --env KEY2="value" image:tag 
docker image pull mongo:latest
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=niko --env MONGO_INITDB_ROOT_PASSWORD=niko mongo:latest
docker container start contohmongo