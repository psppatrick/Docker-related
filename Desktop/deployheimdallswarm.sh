#!/bin/sh

docker service create \
--name=heimdall \
--publish=8082:80 \
--publish=8083:443 \
linuxserver/heimdall


