#!/bin/sh
echo "makeing rootdir"
mkdir rootfs
cd rootfs
 
echo "makeing dir: bin dev etc lib proc sbin sys usr"
mkdir bin dev etc lib proc sbin sys usr #8 dirs
mkdir usr/bin usr/lib usr/sbin lib/modules
 
#Don't use mknod, unless you run this Script as 
mknod -m 600 dev/console c 5 1
mknod -m 666 dev/null c 1 3
 
echo "making dir: mnt tmp var"
mkdir mnt tmp var
chmod 1777 tmp
mkdir mnt/etc mnt/jiffs2 mnt/yaffs mnt/data mnt/temp
mkdir var/lib var/lock var/log var/run var/tmp
chmod 1777 var/tmp
 
echo "making dir: home root boot"
mkdir home root boot
echo "done"

