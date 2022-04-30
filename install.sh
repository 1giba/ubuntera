#!/bin/sh

wget -O ${HOME}/ubuntera.zip https://github.com/1giba/ubuntera/archive/refs/heads/master.zip
cd ${HOME}
unzip ubuntera.zip
mv ubuntera-master ubuntera
cd ubuntera

sudo apt -y clean
sudo apt -y autoremove
sudo apt update
sudo apt -y install make

echo ""
echo "Create your config.yml according to readme:"
echo "- https://github.com/1giba/ubuntera/blob/master/README.md#configuration"
echo ""
echo "!! NOW YOU CAN PLAY !!"
