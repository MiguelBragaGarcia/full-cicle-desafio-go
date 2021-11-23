FROM golang:1.12-alpine

workdir /usr/src/app

COPY . .

RUN go build ./index.go

expose 8080

cmd ["./index"]