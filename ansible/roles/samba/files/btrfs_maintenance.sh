#!/bin/bash

#
# paranoia settings
#
umask 022
PATH=/sbin:/bin:/usr/sbin:/usr/bin
export PATH

sudo btrfs scrub start -B /var/kittycastle | sudo tee /var/log/btrfs-scrub.log

(( m = 0 ))

while sudo btrfs balance start -musage=$m /var/kittycastle
do
        (( m = m + 5 ))
done

(( d = 0 ))

while sudo btrfs balance start -dusage=$d /var/kittycastle
do
        (( d = d + 5 ))
done

btrfs balance start /var/kittycastle

btrfs scrub start -Bd /var/kittycastle

exit 0