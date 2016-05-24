#! /bin/bash

echo "Hello $USER, your home directory is: $HOME"
echo "The terminal type is: $TERM"
echo "Level 3 services running on your system is: "
ls /etc/rc3.d/S*
