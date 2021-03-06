#!/bin/sh
FOLDER=$HOME/.local/bin

mkdir -p "$FOLDER"

sudo chown -R "$USER:$USER" "$FOLDER"
sudo chmod -R 755 "$FOLDER"

sudo apt install python3-pip

python3 -m pip install --user --upgrade pip setuptools keyrings.alt
python3 -m pip install --user testresources wheel
python3 -m pip install --user -r requirements_ansible.txt
python3 -m pip install github3.py

sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt update -y
sudo apt install software-properties-common ansible -y

