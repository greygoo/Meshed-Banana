#!/bin/sh

echo "\nRunning ${0}\n"

WD=$(pwd)

cd /tmp
git clone https://github.com/Cloud-RF/Signal-Server.git
cd Signal-Server/src
cmake .
make
make install

cd $WD
