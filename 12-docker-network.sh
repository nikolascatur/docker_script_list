#contoh driver 
# bridge, yaitu driver yang digunakan untuk membuat network secara virtual yang memungkinkan container yang terkoneksi di bridge network yang sama saling berkomunikasi
# host, [LINUX ONLY] yaitu driver yang digunakan untuk membuat network yang sama dengan sistem host. host hanya jalan di Docker Linux, tidak bisa digunakan di Mac atau Windows
# none, yaitu driver untuk membuat network yang tidak bisa berkomunikasi


# untuk menghubungkan antar container di docker perlu dibuat jaringan di dalam docker oleh sebab itu butuh docker network
# melihat list network 
docker network ls
#membuat netrowk => docker network create --driver {namaDriver} {namaNetwork}
docker network create --driver bridge contohNetwork
#menghapus network 
deocker network rm contohNetwork

