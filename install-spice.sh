#!/bin/bash

sudo apt install spice-vdagent qemu-guest-agent
sudo systemctl enable spice-vdagent
sudo systemctl start spice-vdagent

git clone https://github.com/h0ek/x-resize.git

cd x-resize
./setup-x-resize-xfce-kali.sh

echo 'reboot, make sure that you have set display as spice and run xrandr --auto'
