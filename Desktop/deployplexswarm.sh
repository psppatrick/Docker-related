#!/bin/sh

docker service create \
--name=plex \
--publish=32400:32400 \
--publish=32400:32400/udp \
--publish=32469:32469 \
--publish=32469:32469/udp \
--publish=5353:5353/udp \
--publish=1900:1900/udp \
--mount=type=bind,src=/mnt/shared/TV,dst=/tv \
--mount=type=bind,src=/mnt/shared/Movies,dst=/movies \
--mount=type=bind,src=/mnt/shared/Music,dst=/music \
--mount=type=bind,src=/mnt/shared/Anime,dst=/anime \
linuxserver/plex


