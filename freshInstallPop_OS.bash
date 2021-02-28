#!/bin/bash

#Updating POP_OS
sudo apt update -y && sudo apt upgrade -y

#Removing Unwanted Programs
sudo apt purge -y imagemagick-6-common \
	geary \
	gedit \
	libreoffice*

#Installing More Simple Programs
sudo apt install -y flatpak \
       	rclone \
       	psensor \
       	gnome-tweaks \
	htop \
	neofetch \
	thunderbird

#Installing Flatpak Programs
flatpak install -y com.discordapp.Discord \
       	com.spotify.Client \
       	org.godotengine.Godot \
       	org.texstudio.TeXstudio \
	org.gnome.Boxes

#Dealing wiht Appimages

#AppImageLauncher
sudo add-apt-repository -y ppa:appimagelauncher-team/stable
sudo apt update
sudo apt install -y appimagelauncher

#AppImages
wget -P Downloads/ "https://gitlab.com/librewolf-community/browser/linux/uploads/e15c18d46b8e07ac18bf7f59a976c9e0/LibreWolf-86.0-1.x86_64.AppImage"


