import os
import subprocess

bashCommand = 'git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/'+os.getenv('USER')+'/.oh-my-zsh/themes/powerlevel10k'
process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
output, error = process.communicate()
print(output)

zshrc_path = '/home/'+os.getenv('USER')+'/.zshrc'
print(zshrc_path)
zshrc = open(zshrc_path, 'r+')
content = zshrc.read()
zshrc.close()
newContent = content.replace('ZSH_THEME="robbyrussell"', 'ZSH_THEME="powerlevel10k/powerlevel10k"')

zshrc = open(zshrc_path, 'w+')
zshrc.write(newContent)
zshrc.close()