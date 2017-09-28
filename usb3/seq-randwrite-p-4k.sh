#!/usr/bin/env bash

fio -o /media/root/home/core/fio/seq-randwrite-dev03-p-4k.result \
    -rw=randwrite \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev03 \
    -loops=-1 \
    -runtime=30 \
    -name=seqwritedev03 &

fio -o /media/root/home/core/fio/seq-randwrite-dev04-p-4k.result \
    -rw=randwrite \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev04 \
    -loops=-1 \
    -runtime=30 \
    -name=seqwritedev04 &
