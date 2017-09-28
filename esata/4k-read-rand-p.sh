#!/usr/bin/env bash

fio -o /media/root/home/core/fio/4k-read-rand-p-dev01.result \
    -rw=randread \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev01 \
    -loops=-1 \
    -runtime=10 -numjobs=64 -group_reporting \
    -name=seqreaddev01 &

fio -o /media/root/home/core/fio/4k-read-rand-p-dev02.result \
    -rw=randread \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev02 \
    -loops=-1 \
    -runtime=10 -numjobs=64 -group_reporting \
    -name=seqreaddev02 &
