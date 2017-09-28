#!/usr/bin/env bash

fio -o /media/root/home/core/fio/4k-write-rand-p-dev01.result \
    -rw=randwrite \
    -direct=1 \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev01 \
    -loops=-1 \
    -runtime=10 -numjobs=64 -group_reporting \
    -name=seqwritedev01 &

fio -o /media/root/home/core/fio/4k-write-rand-p-dev02.result \
    -rw=randwrite \
    -direct=1 \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev02 \
    -loops=-1 \
    -runtime=10 -numjobs=64 -group_reporting \
    -name=seqwritedev02 &
