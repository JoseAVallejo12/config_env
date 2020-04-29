#!/bin/bash

#********************************************
#*********INSTALL TOOL BASIC*****************

#********Install Shell ZSH*******************
sudo apt install zsh
#********Install pyton ans pip for WSL*******************
sudo apt update && upgrade
sudo apt install python3 python3-pip ipython3
sudo apt-get install python3-pep8
sudo apt-get install python3-pip
pip3 install pep8

#**********instal GIT*************************
sudo apt install git

#***********install VALGRIND******************
sudo apt-get install valgrind

#*********************************************
#**********DOWN LOAD RECURS*******************

#***managger plugin shell zsh OH_MY_ZSH*******
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#*********manager pluggin vim bundle**********
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#*****theme powerline10k for oh_my_zsh*********
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
###Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.########

#autocomplete options with oh_my_zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting


