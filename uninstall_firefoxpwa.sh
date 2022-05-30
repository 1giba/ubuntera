#!/bin/sh

sudo rm -f /usr/share/keyrings/firefoxpwa-keyring.gpg
sudo rm -f rm /etc/apt/sources.list.d/firefoxpwa.list
sudo apt remove --purge firefoxpwa -y
sudo apt clean
sudo apt auto-remove -y
