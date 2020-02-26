#!/bin/bash

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.3.2-amd64.deb -O slack.deb
dpkg -i slack.deb
apt-get -f install
apt update && apt upgrade
rm slack.deb