export ZSH=/usr/share/oh-my-zsh

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

zstyle :compinstall filename '/home/alex/.zshrc'

autoload -Uz compinit
compinit

DISABLE_AUTO_UPDATE="true"

plugins=(git zsh-autosuggestions)
ZSH_THEME="sorin"

eval $(dircolors ~/.dircolors)

# function alias
dockersr() { docker stop "$@" && docker rm "$@" ;}

# alias
alias cl='clear'
alias ll='ls -lh --color=auto'
alias lla='ls -lah --color=auto'
alias dockercc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'
alias dockerci='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'
alias dockersr=dockersr $1

export TERM=xterm-256color
export PATH=$PATH:~/.gem/ruby/2.3.0/bin


source $ZSH/oh-my-zsh.sh
