export PATH="$PATH:$(yarn global bin)"

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' max-errors 1
zstyle :compinstall filename '/home/easy/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit

prompt walters

HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep extendedglob nomatch
setopt HIST_EXPIRE_DUPS_FIRST
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt APPEND_HISTORY
unsetopt notify

PS1=$'%(!.#.>) %F{def}'

source ~/.aliases
source ~/.functions
