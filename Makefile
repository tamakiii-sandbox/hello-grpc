
all: proto/php proto/grpc
	protoc --proto_path=./proto --php_out=./proto/php --php-grpc_out=./proto/grpc ./proto/src/*.proto

proto/php:
	mkdir -p $@

proto/grpc:
	mkdir -p $@

clean:

