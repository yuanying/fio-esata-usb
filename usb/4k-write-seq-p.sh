#!/usr/bin/env bash

fio -o /media/root/home/core/fio/4k-write-seq-p-dev03.result \
    -rw=write \
    -direct=1 \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev03 \
    -loops=-1 \
    -runtime=10 -numjobs=64 -group_reporting \
    -name=seqwritedev03 &

fio -o /media/root/home/core/fio/4k-write-seq-p-dev04.result \
    -rw=write \
    -direct=1 \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev04 \
    -loops=-1 \
    -runtime=10 -numjobs=64 -group_reporting \
    -name=seqwritedev04 &
