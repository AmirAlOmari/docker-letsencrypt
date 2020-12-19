#!/usr/bin/env sh

echo 'BUILDING NGINX FACADE CONFIG'

export DOLLAR='$'
envsubst < default.conf.template > /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"
