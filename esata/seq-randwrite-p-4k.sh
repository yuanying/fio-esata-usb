#!/usr/bin/env bash

fio -o /media/root/home/core/fio/seq-randwrite-dev01-p-4k.result \
    -rw=randwrite \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev01 \
    -loops=-1 \
    -runtime=30 \
    -name=seqwritedev01 &

fio -o /media/root/home/core/fio/seq-randwrite-dev02-p-4k.result \
    -rw=randwrite \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev02 \
    -loops=-1 \
    -runtime=30 \
    -name=seqwritedev02 &
