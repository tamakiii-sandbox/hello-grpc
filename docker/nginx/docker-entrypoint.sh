#!/usr/bin/env bash

if [ "$1" == "" ]; then
  nginx -g "daemon off;"
else
  exec "$@"
fi