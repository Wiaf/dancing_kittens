# This file is
# {{ ansible_managed }}
# /bin/bash
#
#run as root
#rsync -avP bretterboi.online://home/wiaf/pron /Users/wiaf/Nextcloud/sort/
#rclone copy girls:/girls /Users/wiaf/Nextcloud/ -v
#rclone copy girls:/girls /Users/wiaf/Pictures/girls -v
#rclone copy /Users/wiaf/Pictures/girls /girls:/girls/ -v
sudo rm /etc/resolv.conf
sudo bash -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf'
sudo bash -c 'echo "nameserver 9.9.9.9" >> /etc/resolv.conf'
sudo bash -c 'echo "nameserver 10.0.0.1" >> /etc/resolv.conf'
sudo bash -c 'echo "[network]" > /etc/wsl.conf'
sudo bash -c 'echo "generateResolvConf = false" >> /etc/wsl.conf'
sudo chattr +i /etc/resolv.conf