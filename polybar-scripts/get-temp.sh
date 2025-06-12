#!/bin/sh

TEMP=`ansiweather -l burbank -u imperial| cut -d ':' -f2 | cut -d '-' -f 1 | cut -d ' ' -f 2`
echo $TEMP"°"
