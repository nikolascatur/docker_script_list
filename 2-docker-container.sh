# docker container adalah hasil installnya dan sangat tergantung dengan docker imagenya sehingga docker image nya gak bisa di hapus
docker container ls -a # melihat semau isi container baik yang jalan maupun yang tidak
docker container ls # melihat container yang jalan
docker container create --name contohredis redis:lastest # untuk membuat container perintahnya => docker container create --name namacontainer namaimage:tag
docker container start contohredis #menjalankan docker container => docker container start {containerid}/{namecontainer}
docker container stop contohredis #menghentikan docker container => docker container stop {containerid}/{namacontainer}
docker container rm contohredis #menghapus docker container => docker container rm {containerId}/{namecontainer}
docker container logs contohredis #untuk melihat log container tertentu => docker container logs {containerId}/{nameContainer}
docker container logs -f contohredis #untuk melihat log container tertentu secara realtime => docker container logs -f {containerId}/{nameContainer}
