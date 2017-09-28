#!/usr/bin/env bash

fio -o /media/root/home/core/fio/seq-read-dev03-p-32m.result \
    -rw=read \
    -size=256m \
    -bs=32m \
    -directory=/media/root/var/lib/heketi/dev03 \
    -loops=-1 \
    -runtime=30 \
    -name=seqreaddev03 &

fio -o /media/root/home/core/fio/seq-read-dev04-p-32m.result \
    -rw=read \
    -size=256m \
    -bs=32m \
    -directory=/media/root/var/lib/heketi/dev04 \
    -loops=-1 \
    -runtime=30 \
    -name=seqreaddev04 &
