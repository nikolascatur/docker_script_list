docker container create --name contohredis redis:latest
docker container start contohredis
docker container logs -f contohredis