#!/bin/sh

docker service create \
--name=sonarr \
--publish=8989:8989 \
--mount=type=bind,src=/mnt/shared/00000-To-Sort/,dst=/downloads \
--mount=type=bind,src=/mnt/shared/TV,dst=/tv \
--mount=type=bind,src=/mnt/shared/Anime,dst=/anime \
linuxserver/sonarr
