#!/bin/sh

echo "\nRunning ${0}\n"

TARGET_DIR=/home/$USER/Apps/nexus
WD=$(pwd)

cd /tmp
git clone https://github.com/HarlekinSimplex/nexus.git
cd nexus

# Create workdir
mkdir -p $TARGET_DIR/nexus_server

# copy start script
cp bsbdock.nexus_context/start.sh $TARGET_DIR 
chmod ug+x $TARGET_DIR/start.sh

# Pull in NexusServer script
cp -r bsbdock.nexus_context/nexus_server $TARGET_DIR
chmod ug+x $TARGET_DIR/nexus_server/nexus_server.py

cd $WD

# Create simple systemd service for Nexus server start
#cat <<EOF > /etc/systemd/system/nexus.service
#[Unit]
#Description=Nexus Server
#
#[Service]
#Type=oneshot
#ExecStart=$TARGET_DIR/start.sh
#RemainAfterExit=yes
#
#[Install]
#WantedBy=multi-user.target
#EOF
