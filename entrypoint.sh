#!/bin/sh

echo hello

set -eu

envsubst '$$PORT $$SSL_CERT $$SSL_KEY' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
cat /etc/nginx/nginx.conf
nginx
