export ZSH=$HOME/.oh-my-zsh

# weird behaviour mate
export TERM=xterm-256color


ZSH_THEME="arrow"

plugins=(
	git
	python
	docker
	docker-compose
	pip
	golang
	httpie
	ruby
	brew
	)

source $ZSH/oh-my-zsh.sh

export EDITOR=vim

export PATH=$PATH:$HOME/.local/bin
export PATH="/opt/homebrew/opt/go@1.17/bin:$PATH"
export GOPATH=$HOME/go

export PATH=$HOME/.nvm/versions/node/v15.8.0/bin:$PATH
export PATH="$PATH:$(yarn global bin)"

source ~/.tmuxinator.zsh
alias mux=tmuxinator
source $HOME/.zprofile
