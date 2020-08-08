#!/usr/bin/env bash
#josevallejo
#auto install script v1.0
list=( git valgrind gcc python3 pip3 pep8 zsh )


#Funtion for install zsh, Oh_my_szh, p10k theme, vundle + plugin, and file configs
function _zsh(){
	initial_msn "zsh"
	git config --global user.name "josevallejo1984"
	git config --global user.email "josealfredovallejo25@gmail.com"
	sudo apt update
	sudo apt-get -y install zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	#vim +PluginInstall +qall
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
	git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
	rm "$HOME/.vimrc" "$HOME/.zshrc"
	ln -s "$HOME/config_env/.zshrc" "$HOME/.zshrc"
	ln -s "$HOME/config_env/.vimrc" "$HOME/.vimrc"
	vim +PluginInstall +qall
	end_msn "zsh"
}

#Funtion for install pep8
function _pep8(){
	initial_msn "pep8"
	sudo apt update
	sudo pip3 install pep8==1.7.0
	end_msn "pep8"
}
#Funtion for install autopep8
function _autopep8(){
	initial_msn "pydocstyle"
	sudo apt update
	# pydocstyle will be installing too
	pip install --upgrade autopep8
	end_msn "pydocstyle"
}

#Funtion for install pip3
function _pip3(){
	initial_msn "pip3"
	sudo apt update
	sudo apt-get -y install python3-pip
	end_msn "pip3"
}

#Funtion for install python3
function _python3(){
	initial_msn "python3"
	#sudo apt update
	#sudo apt-get --assume-yes install build-essential
	end_msn "python3"
}

#Funtion for install gcc compiller
function _gcc(){
	initial_msn "gcc"
	sudo apt update
	sudo apt-get -y install build-essential
	end_msn "gcc"
}

# funtion for install flake8
function _flake8 (){
	initial_msn "flake8"
	sudo apt-get update
	sudo apt-get install -y flake8
	end_msn "flake8"
}

#Funtion for install git
function _git(){
	initial_msn "git"
	sudo apt update
	sudo apt-get -y install git
	end_msn "git"
}

#Funtion for install valgrind
function _valgrind () {
	initial_msn "valgrind"
	sudo apt update
	sudo apt-get -y install valgrind
	end_msn "valgrind"
}

function initial_msn () {
	echo ""
	echo ""
	echo "***********************"
	echo "install "$1" "
	echo ""
	echo ""

}


function end_msn () {
	echo ""
	echo ""
	"$1" --version
	echo ""
	echo ""
}

for i in "${list[@]}"
do
	if [ -e "$(which "$i")" ]
	then
		echo ""
		echo "######## file "$i" found ########"
		"$i" --version
		echo ""
	else
		echo ""
		echo "######## file "$i" not found ########"
		"_$i"
		echo ""
	fi
done
