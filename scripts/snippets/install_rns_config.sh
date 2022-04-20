#!/bin/sh

echo "\nRunning ${0}\n"

BOARD=$1
echo $BOARD

mkdir -p /home/$USER/.reticulum
mkdir -p /home/$USER/.nomadnetwork

if [ $BOARD = bananapim2zero ]; then
    cp config/reticulum.config.bPizero /home/$USER/.reticulum/config
else
    cp config/reticulum.config.default /home/$USER/.reticulum/config
fi

cp config/nomadnet.config /home/$USER/.nomadnetwork/config
