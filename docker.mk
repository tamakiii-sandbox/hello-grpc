.PHONY: install build clean

ENVIRONMENT := production-pseudo

install: \
	.env \
	build

.env:
	touch $@
	echo "ENVIRONMENT=$(ENVIRONMENT)" >> $@

build:
	docker-compose build

clean:
	docker-compose down -v