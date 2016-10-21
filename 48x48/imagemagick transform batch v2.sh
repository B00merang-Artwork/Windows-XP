#!/bin/bash
FOLDER=devices
IMAGES=aa-New

cd $FOLDER
mkdir aa-New

   for PHOTO in *.png
   do
#       BASE=`basename $PHOTO`
       NAME=${PHOTO%'.png'}
# 	convert "$PHOTO" -colorspace gray "$IMAGES/$BASE"
    convert "$PHOTO" -resize 16x16 "$IMAGES/$NAME.png"
#   echo $NAME
   done
