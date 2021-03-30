# This file is
# {{ ansible_managed }}
# /bin/bash
#
#run as root
apt-get update
apt-get dist-upgrade -y
apt-get autoremove -y
apt-get autoclean