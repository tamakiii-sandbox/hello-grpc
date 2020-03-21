#!/usr/bin/env bash

if [ "$1" == "" ]; then
  php-fpm
else
  exec "$@"
fi