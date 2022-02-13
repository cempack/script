#! /bin/bash
echo "$(tput setaf 2)###########Installing Dependencies###########$(tput setaf 7)"
sudo apt install git apt-transport-https curl
echo "$(tput setaf 2)###########Installing Themes###########$(tput setaf 7)$(tput setaf 7)"
echo "$(tput setaf 2)Getting Orchis Theme$(tput setaf 7)"
sudo git https://github.com/vinceliuice/Orchis-theme
echo "$(tput setaf 2)Installing Orchis Theme$(tput setaf 7)"
sudo ./Orchis-theme/install.sh --tweaks black
sudo snap install orchis-themes
for i in $(snap connections | grep gtk-common-themes:gtk-3-themes | awk '{print $2}'); do sudo snap connect $i orchis-themes:gtk-3-themes; done
echo "$(tput setaf 2)Getting Tela Icon Theme$(tput setaf 7)"
sudo git https://github.com/vinceliuice/Tela-icon-theme
echo "$(tput setaf 2)Installing Tela Icon Theme$(tput setaf 7)"
sudo .Tela-icon-theme/install.sh
sudo snap install tela-icons
for i in $(snap connections | grep gtk-common-themes:icon-themes | awk '{print $2}'); do sudo snap connect $i tela-icons:icon-themes; done
echo "$(tput setaf 2)###########Installing Software###########$(tput setaf 7)"
echo "$(tput setaf 2)Installing Ulauncher$(tput setaf 7)"
sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher
echo "$(tput setaf 2)Installing Ulauncher Theme$(tput setaf 7)"
mkdir -p ~/.config/ulauncher/user-themes
git clone https://github.com/kleber-swf/orchis-dark-ulauncher.git \
  ~/.config/ulauncher/user-themes/orchis-dark
echo "$(tput setaf 2)Installing Lutris$(tput setaf 7)"
sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update
sudo apt install lutris
"$(tput setaf 2)Installing Brave Browser$(tput setaf 7)"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
echo "$(tput setaf 1)###########You Finished The Installation Now You Need To Install The Extentions In $(tput setaf 6)Extentions.txt $(tput setaf 1)And To Download The Extention For Ulauncher Who Are In $(tput setaf 6)Ulauncher.txt$(tput setaf 1)###########$(tput setaf 7)"