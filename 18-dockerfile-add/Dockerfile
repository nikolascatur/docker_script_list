FROM alpine:3

# menajalankan perintah membuat folder di dalam docker
RUN mkdir hello

# menambahkan semua file di dalam folder text dengan ext *.txt kedalam folder hello, Add juga bis auntuk mendownload file
# bisa juga untuk mengexkstrat file compress zip, tar etc. lebih powerfull dari copy yang cuma ngopy doang
ADD text/*.txt hello

# menjalankan perintah cat ketika docker di jalankan
CMD cat "hello/world.txt"