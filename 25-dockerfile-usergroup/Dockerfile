FROM golang:1.18-alpine

#User digunakan untuk menentukan app nya ini jalan di user mana defaultnya jalan di user root
RUN mkdir /app

RUN addgroup -S cetulgroup
RUN adduser -S -D -h /app cetul cetulgroup
RUN chown -R cetul:cetulgroup /app
USER cetul 

COPY main.go /app
EXPOSE 8080
CMD go run /app/main.go
