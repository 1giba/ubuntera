#!/bin/sh

wget -O ${HOME}/ubuntera.zip https://github.com/1giba/ubuntera/archive/refs/heads/master.zip
cd ${HOME}
unzip ubuntera.zip
mv ubuntera-master ubuntera

sudo apt -y clean
sudo apt -y autoremove
sudo apt update
sudo apt -y install make

echo ""
echo "\e[1;31mCreate your config.yml according to readme: \e[0m"
echo "- https://github.com/1giba/ubuntera/blob/master/README.md#configuration"
echo ""
echo "Installed path: \e[1;35m${HOME}/ubuntera"
echo ""
echo "\e[1;32m !! NOW YOU CAN PLAY !! \e[0m"
