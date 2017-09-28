#!/usr/bin/env bash

fio -o /media/root/home/core/fio/4k-read-rand-p-dev03.result \
    -rw=randread \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev03 \
    -loops=-1 \
    -runtime=10 -numjobs=64 -group_reporting \
    -name=seqreaddev03 &

fio -o /media/root/home/core/fio/4k-read-rand-p-dev04.result \
    -rw=randread \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev04 \
    -loops=-1 \
    -runtime=10 -numjobs=64 -group_reporting \
    -name=seqreaddev04 &
