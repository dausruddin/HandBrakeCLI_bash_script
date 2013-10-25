#!/bin/bash

# Your configuration stuff should go here - replace these with whatever you want
SRC="/home/rmw/public_html/filex/store/vids/toriko/tor"
DEST="/home/rmw/public_html/filex/store/vids/toriko/tori"
DEST_EXT=mp4
HANDBRAKE_CLI=HandBrakeCLI
PRESET="iPhone & iPod Touch"

# The meat of the script
for FILE in "$SRC"/*
do

filename="$(basename "$FILE")"
extension=${filename##*.}
filename=${filename%.*}

$HANDBRAKE_CLI -i "$FILE" -o "$DEST"/"$filename".$DEST_EXT -q 25 -r 23.976 -e x264 --x264-tune animation -E faac -R 48 -Y 480 --ab 93 -O

done
