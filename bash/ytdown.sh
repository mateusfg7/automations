#!/bin/bash

if [[ $1 == "mp3" ]]; then
	youtube-dl -x --audio-format mp3 --audio-quality 0 $2
elif [[ $1 == "mp4" || $1 == "flv" || $1 == "ogg" || $1 == "webm" || $1 == "mkv" || $1 == "avi" ]]; then
	youtube-dl --recode-video $1 $2
else
	youtube-dl $1
fi