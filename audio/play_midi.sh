#!/bin/bash

if [ "$1" == "" -o ! -f "$1" ]
then
    echo Make sure target file is exist
    exit
fi

if [ ! -f /usr/share/GeneralUser.sf2 ]
then
    echo Make sure sound font file is exist
    exit
fi

GST_DEBUG=2 gst-launch-1.0 filesrc location=$1 ! midiparse ! fluiddec soundfont=/usr/share/GeneralUser.sf2 ! autoaudiosink
