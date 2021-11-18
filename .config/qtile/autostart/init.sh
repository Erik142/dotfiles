#!/bin/sh

nitrogen --restore &
setxkbmap eu
imwheel -d -b "45" &

script_path=$(dirname "$0")

#./apps.sh

$script_path/apps.sh &
