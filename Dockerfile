FROM golang:alpine as builder

WORKDIR /usr/src/app

COPY ./index.go .

RUN go build ./index.go

# Utilizando multistaging para gerar a imagem
FROM scratch

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app .

EXPOSE 8080

CMD ["./index"]