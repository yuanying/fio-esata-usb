#!/usr/bin/env bash

fio -o /media/root/home/core/fio/seq-read-dev03-p-4k.result \
    -rw=read \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev03 \
    -loops=-1 \
    -runtime=30 \
    -name=seqreaddev03 &

fio -o /media/root/home/core/fio/seq-read-dev04-p-4k.result \
    -rw=read \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev04 \
    -loops=-1 \
    -runtime=30 \
    -name=seqreaddev04 &
