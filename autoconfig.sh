#!/bin/bash

#********************************************
#*********INSTALL TOOL BASIC*****************

#********Install Shell ZSH*******************

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
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vi

#autocomplete options with oh_my_zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
