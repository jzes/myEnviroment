wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
tar -xzf postman.tar.gz
sudo rm -rf /opt/Postman
sudo mv Postman /opt/Postman
sudo ln -s /opt/Postman/Postman /usr/bin/postman
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
# Before v6.1.2
# Icon=/opt/Postman/resources/app/assets/icon.png
Icon=/opt/Postman/app/resources/app/assets/icon.png 
Terminal=false
Type=Application
Categories=Development;
EOL
rm postman.tar.gz