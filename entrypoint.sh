#!/bin/bash

rm -rf /tmp/.X*lock
rm -rf /tmp/.X11-unix

sleep 1; xset s off
sleep 1; xset s noblank

tigervncserver -SecurityTypes None
sed -i 's/$(hostname)/localhost/g' /usr/share/novnc/utils/launch.sh
/usr/share/novnc/utils/launch.sh --vnc localhost:5901
