# This file is
# {{ ansible_managed }}
# /bin/bash
#
#run as root

mkdir -p /home/wiaf/pron
mkdir -p /home/wiaf/pron/channels
cd /home/wiaf/pron/channels/
#youtube-dl -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --download-archive archive.txt https://xhamster.com/users/USER

mkdir -p /home/wiaf/music
cd /home/wiaf/music/
youtube-dl -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --download-archive archive.txt https://soundcloud.com/ellen-allien/tracks
youtube-dl -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --download-archive archive.txt https://www.youtube.com/c/HATE/videos
youtube-dl -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --download-archive archive.txt https://www.youtube.com/user/DjMissMonique/videos
youtube-dl -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' --download-archive archive.txt https://www.youtube.com/channel/UCCWHSZ6VQPr7cnJAF8JbDzA