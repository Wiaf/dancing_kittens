# /bin/sh
# run as root

apt-get update
apt-get dist-upgrade -y
apt-get autoremove
apt-get autoclean