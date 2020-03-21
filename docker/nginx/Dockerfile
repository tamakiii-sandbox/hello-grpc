FROM nginx:1.17.9 AS production-pseudo

COPY etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

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