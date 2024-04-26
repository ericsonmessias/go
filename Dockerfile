FROM golang:1.22.2
WORKDIR /go/src/desafio
COPY ./[^Dockerfile]* .
RUN GOOS=linux go build -ldflags="-s -w"
CMD ["./desafio"]