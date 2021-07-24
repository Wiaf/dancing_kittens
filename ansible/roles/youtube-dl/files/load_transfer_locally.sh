# This file is
# {{ ansible_managed }}
# /bin/bash
#
# load_transfer_locally.sh

cd /var/kittycastle/music/
rsync --bwlimit=2000 -avP cloud.bretterboi.online://home/wiaf/music/ .

cd /var/kittycastle/pron/
rsync --bwlimit=2000 -avP cloud.bretterboi.online://home/wiaf/pron/ .

