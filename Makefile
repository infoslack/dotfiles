SHELL := /bin/bash

install: install-bash install-dot install-vim

install-bash:
	cp -rf `pwd`/bash ~/.bash
	if [ -a ~/.bashrc ]; then mv ~/.bashrc ~/.bashrc.orig; fi;
	if [ -a ~/.bash_profile ]; then mv ~/.bash_profile ~/.bash_profile.orig; fi
	ln -s ~/.bash/bashrc ~/.bashrc
	ln -s ~/.bash/bash_profile ~/.bash_profile
	source ~/.bash_profile

install-dot:
	cp -f `pwd`/dot/vimrc ~/.vimrc
	cp -f `pwd`/dot/irbrc ~/.irbrc
	cp -f `pwd`/dot/pryrc ~/.pryrc
	cp -f `pwd`/dot/gemrc ~/.gemrc
	cp -f `pwd`/dot/tmux ~/.tmux.conf
	cp -f `pwd`/dot/gitconfig ~/.gitconfig
	cp -f `pwd`/dot/gitignore ~/.gitignore_global

install-vim:
	rm -rf ~/.vim
	git clone https://github.com/infoslack/vimfiles.git ~/.vim
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	vim +BundleInstall +qall
