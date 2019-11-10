FROM golang:1.13.4-alpine3.10

COPY ./go/src/github.com/spiral/php-grpc/Makefile /tmp/Makefile

RUN set -xe && \
    apk add --update --no-cache protobuf git make bash zip && \
    go get github.com/spiral/php-grpc && \
    cp /tmp/Makefile /go/src/github.com/spiral/php-grpc/Makefile && \
    make -C /go/src/github.com/golang/protobuf && \
    make -C /go/src/github.com/spiral/php-grpc install
