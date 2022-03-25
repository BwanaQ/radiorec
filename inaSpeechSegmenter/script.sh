#!/bin/bash
set -x
while true
do
    ina_speech_segmenter.py -i "/root/Recordings/*.mp3" -o "/root/Recordings/" -g "false" -d "smn"
    sleep 1h
done