.PHONY: go

install-all: vim-tmux go docker mux nvm dotfiles vscode install-fonts

zsh:
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

python:
	brew install python
	pip3 install --upgrade pip
	pip3 install jedi

vim-tmux:
	brew install ack ctags
	brew install tmux

go:
	brew install go@1.17

docker:
	brew install --cask docker

mux:
	brew install ruby
	echo 'export PATH="/opt/homebrew/opt/ruby/bin:$$PATH"' >> ~/.zshrc
	source ~/.zshrc
	gem install tmuxinator

npm:
	brew install npm
	npm i -g yarn

dotfiles:
	pip3 install dotfiles
	cp -R dotfilesrc ~/.dotfilesrc
	dotfiles -s --force

