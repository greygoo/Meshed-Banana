#!/bin/sh

DEFAULT_USER=$USER
echo "Installing for user $USER"

# Install required packages
sudo snippets/install_packages.sh

# Install Soundmodem
sudo snippets/install_soundmodem.sh

# Install RNS modules
snippets/install_python_modules.sh

# Copy direwolf config
snippets/install_direwolf.sh

# Copy reticulum/nomadnet config
snippets/install_rns_config.sh default 
