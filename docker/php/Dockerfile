FROM php:7.2-fpm-alpine

RUN set -xe && \
    apk add --update --no-cache protobuf make zip autoconf gcc g++ libzip-dev && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN pecl install grpc protobuf

COPY ./conf.d/grpc.ini /usr/local/etc/php/conf.d/grpc.ini
COPY ./conf.d/protobuf.ini /usr/local/etc/php/conf.d/protobuf.ini

# FROM prooph/php:7.3-zts
#
# RUN apk add --no-cache --virtual .persistent-deps \
#     php7-dev \
#     libc-dev \
#     make \
#     gcc \
#     g++ \
#     git \
#     unzip \
#     openssh \
#     libzip-dev
#
# RUN set -xe \
#     && docker-php-ext-install zip \
#     && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
#     && composer global require hirak/prestissimo
#
# # Set up the command arguments
# CMD ["php","--v"]

# ENTRYPOINT ["rr-grpc serve -v -d"]
