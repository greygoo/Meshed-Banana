#!/bin/sh

WD=$(pwd)

cd /home/$USER/.local/lib/python3.9/site-packages/serial/tools
patch -p0 < /tmp/overlay/pyserial.patch
