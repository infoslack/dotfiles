SHELL := /bin/bash

install: install-bash install-dot install-vim

install-bash:
	cp -rf `pwd`/bash ~/.bash
	if [ -a ~/.bash_profile ]; then mv ~/.bash_profile ~/.bash_profile.orig; fi
	ln -s ~/.bash/bash_profile ~/.bash_profile
	source ~/.bash_profile

install-dot:
	cp -f `pwd`/dot/vimrc ~/.vimrc
	cp -f `pwd`/dot/tmux ~/.tmux.conf
	cp -f `pwd`/dot/gitconfig ~/.gitconfig
	cp -f `pwd`/dot/gitignore ~/.gitignore_global

install-vim:
	rm -rf ~/.vim
	git clone https://github.com/infoslack/vimfiles.git ~/.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
