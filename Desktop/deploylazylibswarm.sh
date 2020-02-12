#!/bin/sh

docker service create \
--name=lazylibrarian \
--publish=5299:5299 \
--mount=type=bind,src=/mnt/shared/00000-To-Sort/,dst=/downloads \
--mount=type=bind,src=/mnt/shared/Audiobook,dst=/books \
linuxserver/lazylibrarian


