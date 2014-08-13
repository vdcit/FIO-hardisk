#!/bin/bash
fio /data/test1.fio >> /data/`date +"%d%m%y-%H%M%S"`-kqfio.txt
rm /data/random-read.1.0
