#mkdir fonts
links='https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraMono.zip
https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DroidSansMono.zip
https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/DejaVuSansMono.zip'

for link in $links; do
  wget $link
done
mkdir fonts || true
mv *.zip fonts/ || true 
for file in fonts/*.zip; do
  echo $file
  unzip $file -d fonts/
done

mkdir ~/.fonts || true

mv fonts/*.otf ~/.fonts/ || true
mv fonts/*.ttf ~/.fonts/ || true


#fira code
wget https://github.com/tonsky/FiraCode/releases/download/2/FiraCode_2.zip
unzip FiraCode_2.zip -d ./fonts/
mv fonts/ttf/*.ttf ~/.fonts/ || true
mv fonts/otf/*.otf ~/.fonts/ || true

rm -rf fonts FiraCode_2.zip
