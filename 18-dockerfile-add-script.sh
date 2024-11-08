#build docker
docker build -t nikolascatur/addtest 18-dockerfile-add

docker container create --name addtest nikolascatur/addtest:latest
docker container start addtest 
docker container logs addtest

# command in 20-dockerignore
docker build -t nikolascatur/ignoretest 20-dockerignore
docker container create --name ignoretest nikolascatur/ignoretest:latest
docker container start ignoretest
docker container logs ignoretest

#command in 21-docker-expose
docker build -t nikolascatur/exposetest 21-docker-expose
docker container create --name exposetest --publish 8080:8080 nikolascatur/exposetest
docker container start exposetest
#buat ngcek apakah bener udah di expose 
docker image inspect nikolascatur/exposetest

#command in 22-docker-env
docker build -t nikolascatur/envtest 22-docker-env
docker container create --name envtest --publish 8080:8080 nikolascatur/envtest:latest
# mengubah port default nya 
docker container create --name envtest --env APP_PORT=9090 --publish 8080:9090 nikolascatur/envtest:latest
docker container start envtest
docker container inspect envtest
docker container logs envtest

#command in 23-dockerfile-volume
docker build -t nikolascatur/volumetest 23-dockerfile-volume
docker container create --name volumetest --env APP_PORT=9090 --publish 8080:9090 nikolascatur/volumetest:latest
docker image inspect nikolascatur/volumetest
docker container logs volumetest
docker container inspect volumetest

#comman in 24-dockerfile-workdir
docker build -t nikolascatur/workdirtest 24-dockerfile-workdir
docker container create --name workdirtest --publish 8080:8080 nikolascatur/workdirtest:latest
docker conatiner start workdirtest
docker container exec -i -t workdirtest /bin/sh

#command 25-dockerfile-usergroup
docker build -t nikolascatur/usertest 25-dockerfile-usergroup
docker container create --name usertest --publish 8080:8080 nikolascatur/usertest:latest
docker container exec -i -t usertest /bin/sh
