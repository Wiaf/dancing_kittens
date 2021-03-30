#!/bin/sh
# Usage: fuck_datengrab.sh as root

tail -f /var/log/syslog | awk '
                    /Buffer I/O error on device sd/ { system("sudo /usr/local/bin/fuck_datengrab.sh now") }