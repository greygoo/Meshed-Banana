#!/bin/sh

echo "\nRunning ${0}\n"

BOARD=$1
echo $BOARD

mkdir -p /home/$USER/.reticulum
mkdir -p /home/$USER/.nomadnetwork

if [ $BOARD = bananapim2zero ]; then
    cp /tmp/overlay/reticulum.config.bPizero /home/$USER/.reticulum/config
else
    cp /tmp/overlay/reticulum.config.default /home/$USER/.reticulum/config
fi

cp /tmp/overlay/nomadnet.config /home/$USER/.nomadnetwork/config
