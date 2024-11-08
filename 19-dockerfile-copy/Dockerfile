FROM alpine:3

#copy digunakan untuk mengcopy file secara untuk tanpa perlu melakukan operasi tambahan kayak extract, dowloadd,dsb
# berbeda dengan ADD yang ada operasi tambahan untuk best practice nya sebaiknya pake Copy 
# untuk pertintah selanjutnya kayak extract mending pake RUN

RUN mkdir hello
COPY text/*.txt hello
CMD cat "hello/world.txt"