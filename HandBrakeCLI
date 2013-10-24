#!/bin/bash

# Your configuration stuff should go here - replace these with whatever you want
SRC="/SOURCE_FOLDER_HERE" #source folder without / at the end
DEST="/DESTINATION_FOLDER_HERE" #destination folder without / at the end
DEST_EXT=mp4 #destination video format
HANDBRAKE_CLI=HandBrakeCLI #handbrake application
PRESET="iPhone & iPod Touch"

# The meat of the script
for FILE in "`ls $SRC`"
do
filename=$(basename $FILE)
extension=${filename##*.}
filename=${filename%.*}

$HANDBRAKE_CLI -i "$SRC"/$FILE -o "$DEST"/"$filename".$DEST_EXT "$PRESET"

done
