# Unuk mengakses container yang jalan di dalam redis perlu mengekspos portnya makanya pake port forwarding command nya
# docker container create --name {nameContainer} --publish posthost:portcontainer image:tag
docker container create --name contohredis --publish 3000:3000 redis:latest

# pull nginx
docker image pull nginx:latest
docker container create --name contohnginx --publish 8080:80 nginx:latest
docker container start contohnginx
