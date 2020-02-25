#!/bin/bash

#wget https://telegram.org/dl/desktop/linux -O telegram.tar.xz
tar -xf telegram.tar.xz
sudo rm -rf /opt/Telegram || true
sudo mv Telegram /opt/Telegram
sudo ln -s /opt/Telegram/Telegram /usr/bin/telegram
cat > ~/.local/share/applications/telegram.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Telegram
Exec=telegram
# Before v6.1.2
# Icon=/opt/Postman/resources/app/assets/icon.png
Icon=Telegram
Terminal=false
Type=Application
Categories=Internet;
EOL
rm telegram.tar.xz