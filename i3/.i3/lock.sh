#!/bin/bash

ICON_BL=$HOME/.i3/lockicon.png
ICON_WH=$HOME/.i3/lockicon_wh.png
TMPBG=/tmp/screen.png
VALUE="60"

scrot $TMPBG
COLOR=`convert $TMPBG -colorspace hsb -resize 1x1 txt:- | sed -E '/.*$/ {
                             N
                             s/.*\n.*([0-9]{1,2}[^\.])\.[0-9]+%\)$/\1/
                             }'`
if [ "$COLOR" -gt "$VALUE" ]; then #white background image and black text
    convert $TMPBG -level 0%,100%,0.6 -filter Gaussian -resize 50% -define filter:sigma=4.5 -resize 200% -font Liberation-Sans -pointsize 26 -fill black -gravity center -annotate +0+160 'Type password to unlock' - | composite -gravity center $ICON_BL - $TMPBG
    i3lock --textcolor=00000000 --insidecolor=0000001c --ringcolor=0000003e --linecolor=00000000 --keyhlcolor=ffffff80 --ringvercolor=ffffff00 --insidevercolor=ffffff1c --ringwrongcolor=ffffff55 --insidewrongcolor=ffffff1c  -i $TMPBG
else #black
    convert $TMPBG -level 0%,100%,0.6 -filter Gaussian -resize 50% -define filter:sigma=4.5 -resize 200% -font Liberation-Sans -pointsize 26 -fill white -gravity center -annotate +0+160 'Type password to unlock' - | composite -gravity center $ICON_WH - $TMPBG
    i3lock --textcolor=ffffff00 --insidecolor=ffffff1c --ringcolor=ffffff3e --linecolor=ffffff00 --keyhlcolor=00000080 --ringvercolor=00000000 --insidevercolor=0000001c --ringwrongcolor=00000055 --insidewrongcolor=0000001c  -i $TMPBG
fi
rm $TMPBG
