# This file is
# {{ ansible_managed }}
# /bin/bash
#
# load.sh

mkdir -p /home/wiaf/music
cd /home/wiaf/music/
youtube-dl --batch-file='/home/wiaf/sounddll.txt' -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --download-archive archive.txt -i

mkdir -p /home/wiaf/pron
cd /home/wiaf/pron/
youtube-dl --batch-file='/home/wiaf/prondll.txt' -o '%(playlist_index)s - %(title)s.%(ext)s' --download-archive archive.txt -i

mkdir -p /home/wiaf/geile_mucke
cd /home/wiaf/geile_mucke
youtube-dl --batch-file='/home/wiaf/ytdll.txt' -o '%(title)s.%(ext)s' --download-archive archive.txt -i -f
