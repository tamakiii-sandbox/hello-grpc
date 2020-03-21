FROM php:7.4.4-fpm AS production-pseudo

WORKDIR /app/php

RUN curl https://getcomposer.org/download/1.10.1/composer.phar > /usr/local/bin/composer && \
    php -r "if (hash_file('sha384', '/usr/local/bin/composer') !== 'b6112e167c56731fe2c6b210f7a6c07da544ffe33d31d0e9676c411c59ffffbf55604f19b3ea49b6c43d2f6c54db52a2') { echo 'Installer corrupt' . PHP_EOL; exit(-1); }" && \
    chmod u+x /usr/local/bin/composer

COPY usr/local/etc/php-fpm.conf /usr/local/etc/php-fpm.conf

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT [ "docker-entrypoint.sh" ]

# --

FROM production-pseudo AS development

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      make \
      git \
      less \
      vim \
      procps \
      && \
    apt-get clean