#!/bin/bash

apt update && apt upgrade
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb
dpkg -i vscode.deb
rm vscode.deb
apt-get -f install
apt update && apt upgrade