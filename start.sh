#! /bin/bash
echo "Installing Dependencies"
sudo apt install git
echo "Getting Orchis Theme"
sudo git https://github.com/vinceliuice/Orchis-theme
echo "Installing Orchis Theme"
sudo ./Orchis-theme/install.sh --tweaks black
sudo snap install orchis-themes
for i in $(snap connections | grep gtk-common-themes:gtk-3-themes | awk '{print $2}'); do sudo snap connect $i orchis-themes:gtk-3-themes; done
echo "Installing Gnome Extensions ..."
./extensions.sh --enable --file extensions.txt
