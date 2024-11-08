#volume berfungsi untuk menambahkan lokasi file disimpan jadi ketika docker nya mati tidak hilang
FROM golang:1.18-alpine
ENV APP_PORT=8080
ENV APP_DATA=/logs

RUN mkdir ${APP_DATA}
RUN mkdir app
COPY main.go app

EXPOSE 8080
#untuk menambahkan lokasi volume dari sebuah app
VOLUME ${APP_DATA}
CMD go run app/main.go