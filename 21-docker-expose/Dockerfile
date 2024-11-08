# expose di gunakan untuk memberitahu yang mau make port apa yang dapat di gunakan 
FROM golang:1.18-alpine

RUN mkdir app
COPY main.go app

EXPOSE 8080
CMD go run app/main.go