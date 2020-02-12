#!/bin/sh

docker service create \
--name=lidarr \
--publish=8686:8686 \
--mount=type=bind,src=/mnt/shared/00000-To-Sort/,dst=/downloads \
--mount=type=bind,src=/mnt/shared/Music,dst=/music \
linuxserver/lidarr
