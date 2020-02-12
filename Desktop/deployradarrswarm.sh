#!/bin/sh

docker service create \
--name=radarr \
--publish=7878:7878 \
--mount=type=bind,src=/mnt/shared/00000-To-Sort/,dst=/downloads \
--mount=type=bind,src=/mnt/shared/Movies,dst=/movies \
linuxserver/radarr
