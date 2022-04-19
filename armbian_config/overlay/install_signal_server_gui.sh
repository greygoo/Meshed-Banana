#!/bin/sh

echo "\nRunning ${0}\n"

USER=$1

WD=$(pwd)

cd /tmp
git clone https://github.com/thetacom/signalserver_gui
cd signalserver_gui/
python3 -m venv .venv
pip install -rrequirements.txt
sed -i 's/path = \/usr\/bin\/signalserver/path = \/usr\/local\/bin\/signalserver/' config.ini

cd $WD

mv /tmp/signalserver_gui /home/$USER/Apps
chown -R $USER /home/$USER/Apps/signalserver_gui
