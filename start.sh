#! /bin/bash
echo "Installing Gnome Extensions ..."
./extensions.sh --enable --file extensions.txt
echo "Getting Orchis Theme"
wget https://github.com/vinceliuice/Orchis-theme/archive/refs/heads/master.zip
echo "Installing Orchis Theme"