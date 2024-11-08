# cara ngbuildnya [nikolascatur] -> disesuaikan dengan nama docker hub nya
# [17-dockerfile-from] -> nama foldernya
docker build -t nikolascatur/simple 17-dockerfile-from
#check udah ada blm di image
docker image ls

# RUN instruction 
docker build -t nikolascatur/run 17-dockerfile-from

# untuk menampilkan dari detail proses nya ketika run bisa nambahin => --progress=plain
# untuk mengerun docker tanpa memperdulikan cache tambah comment => --no-cache
docker build -t nikolascatur/run 17-dockerfile-from --progress=plain --no-cache

# membuat melihat ketika di run 
docker image inspect nikolascatur/run

#cmd instruction
docker build -t nikolascatur/run 17-dockerfile-from
docker container create --name cmdExample nikolascatur/run:latest
# terus dijalankan expectnya abis dijalan langsung mati 
docker container start cmdExample
# untuk melihat log result ketika docker container di jalankan
docker container logs cmdExample
#menampilkan docker list tapi di filter
docker container ls -a | grep runExmaple
