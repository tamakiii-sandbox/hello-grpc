
all: proto/php proto/grpc
	protoc --proto_path=./proto --php_out=./src/Acme/Protobuf --php-grpc_out=./proto/grpc ./proto/src/*.proto

proto/php:
	mkdir -p $@

proto/grpc:
	mkdir -p $@

clean:

