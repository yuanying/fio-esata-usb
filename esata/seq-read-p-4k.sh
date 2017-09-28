#!/usr/bin/env bash

fio -o /media/root/home/core/fio/seq-read-dev01-p-4k.result \
    -rw=read \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev01 \
    -loops=-1 \
    -runtime=30 \
    -name=seqreaddev01 &

fio -o /media/root/home/core/fio/seq-read-dev02-p-4k.result \
    -rw=read \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev02 \
    -loops=-1 \
    -runtime=30 \
    -name=seqreaddev02 &
