FROM golang:1.13.4-alpine3.10

RUN apk add --update --no-cache protobuf git make && \
    go get github.com/spiral/php-grpc/cmd/protoc-gen-php-grpc && \
    make -C /go/src/github.com/golang/protobuf
