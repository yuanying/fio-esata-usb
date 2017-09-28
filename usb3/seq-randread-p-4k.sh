#!/usr/bin/env bash

fio -o /media/root/home/core/fio/seq-randread-dev03-p-4k.result \
    -rw=randread \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev03 \
    -loops=-1 \
    -runtime=30 \
    -name=seqreaddev03 &

fio -o /media/root/home/core/fio/seq-randread-dev04-p-4k.result \
    -rw=randread \
    -size=256m \
    -bs=4k \
    -directory=/media/root/var/lib/heketi/dev04 \
    -loops=-1 \
    -runtime=30 \
    -name=seqreaddev04 &
