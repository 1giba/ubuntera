#!/bin/sh
sudo apt remove --purge -y ansible
sudo apt -y clean
sudo apt -y autoremove
sudo apt update
