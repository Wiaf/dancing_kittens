#!/bin/sh
# Usage: fuck_datengrab.sh as root

service smbd stop --verbose
service nmbd stop --verbose
umount /media/timemachine -l
umount /media/kittycastle -l
fsck.ext4 /dev/disk/by-uuid/fdc076e6-98ce-44ca-b081-e3200beeefc2 -f -y 
fsck.ext4 /dev/disk/by-uuid/edfdc395-7655-47ee-9bcc-07e029d13f26 -f -y 
mount -a --verbose
service smbd start --verbose
service nmbd start --verbose