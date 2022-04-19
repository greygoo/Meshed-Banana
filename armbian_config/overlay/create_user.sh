#!/bin/sh

echo "\nRunning ${0}\n"

USER=$1

useradd -m -G dialout,tty,disk,sudo,audio,video,plugdev,games,users,systemd-journal,input,netdev,ssh -s /bin/bash $USER 
echo $USER:$USER | chpasswd

sudo -u $USER -H echo "PATH=\"/home/${USER}/.local/bin:${PATH}\"" >> /home/$USER/.profile
sudo -u $USER -H mkdir -p /home/$USER/Apps
