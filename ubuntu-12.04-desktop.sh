#!/bin/bash

sudo apt-get update && sudo apt-get install aptitude
sudo aptitude update && sudo aptitude upgrade
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo aptitude remove libavcodec53 libavutil51
sudo aptitude install ubuntu-restricted-extras ubuntu-restricted-addons \
    bmon vim vlc ntp ntpdate unzip bzip2 filezilla k3b libdvdread4 flac \
    tasksel gcc g++ dpkg-dev smplayer gimp inkscape imagemagick python-gpgme \
    winff openssh-client openssh-server sysstat audacity pulseaudio pulseaudio-utils \
    pavucontrol pavumeter pavuk gparted synaptic geany unrar p7zip p7zip-full \
    p7zip-rar compiz compizconfig-settings-manager gedit-plugins mplayer2 \
    wireshark pcmanx-gtk2 comix okular okular-extra-backends okular-backend-odp \
    postr abiword abiword-plugin-mathview codeblocks codeblocks-contrib \
    openjdk-7-jre openjdk-7-jdk furiusisomount python-vte gedit-developer-plugins \
    google-chrome-stable
sudo /usr/share/doc/libdvdread4/install-css.sh
