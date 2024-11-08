# Untuk mengeksekusi command didalam docker => docker container exec -i -t {containerId/containerName} /bin/bash
# -i adalah argument interaktif, menjaga input tetap aktif
# -t adalah argument untuk alokasi pseudo-TTY (terminal akses)
# Dan /bin/bash contoh kode program yang terdapat di dalam container
docker container exec -i -t my_mysql_container /bin/bash
