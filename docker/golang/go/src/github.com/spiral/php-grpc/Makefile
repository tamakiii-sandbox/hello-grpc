all:	install

install:
	go install ./cmd/protoc-gen-php-grpc ./cmd/rr-grpc

test:
	composer update
	go test -v -race -cover
	go test -v -race -cover ./parser
	go test -v -race -cover ./cmd/protoc-gen-php-grpc
	vendor/bin/phpunit
lint:
	go fmt ./...
	golint ./...

clean:
	go clean ./...

nuke:
	go clean -i ./...

regenerate:
	./regenerate.sh
