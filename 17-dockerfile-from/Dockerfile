# digunakan untuk membuat docker image dia base nya dari mana misal FROM alpine:3 base imagenya dari Linux alpine versi 3
FROM alpine:3

#Untuk menambahkan label informasi tentang image bisa menggunakan LABEL
LABEL author="Nicolas Catur Pandoyo"
LABEL company="LautanHarta" website="https://LautanHarta.com"

# RUN digunakan muntuk menjalankan perintah di dalam image yang di buat cth -> RUN mkdir hello membuat folder hello
RUN mkdir hello
RUN echo "Hello World" > "hello/world.txt"
RUN cat "hello/world.txt"

# CMD adalah perintah command yang akan di jalanlkan ketika docker container nya di jalankan 
CMD cat "hello/world.txt"