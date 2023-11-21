#!/bin/bash

# Retrieve the IP address of the Raspberry Pi
ip_address=$(hostname -I)

# Print the IP address for VLC media player 
echo "Put this ip address into VLC network streaming: tcp/mjpeg://$ip_address:8554"
echo
echo "(Please delete a space between IP address and colon sign when put in VLC)"
echo
echo "Waiting for connection..."

#Start camera streaming server
libcamera-vid -n -t 0 --inline --listen --codec mjpeg --width 1920 --height 1080 -o tcp://0.0.0.0:8554
