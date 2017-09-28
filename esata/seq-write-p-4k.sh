#!/usr/bin/env bash

fio -o /media/root/home/core/fio/seq-write-dev01-p-4k.result \
    -rw=write \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev01 \
    -loops=-1 \
    -runtime=30 \
    -name=seqwritedev01 &

fio -o /media/root/home/core/fio/seq-write-dev02-p-4k.result \
    -rw=write \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev02 \
    -loops=-1 \
    -runtime=30 \
    -name=seqwritedev02 &
