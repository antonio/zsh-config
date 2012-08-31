# prompts and themes
autoload -Uz promptinit
setopt promptsubst
promptinit

# colors
autoload -U colors && colors

# completion system
autoload -U compinit && compinit

# zmv
autoload -U zmv

# directories
setopt autocd
export CDPATH=~/code:~/Projects

# run-help
unalias run-help
autoload -U run-help
export HELPDIR=~/.zsh/help

set -o emacs

# history
export HISTFILE=$HOME/.zhistory
export SAVEHIST=2000
export HISTSIZE=2000
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# ux
export WORDCHARS='*?_-[]~=&;!#$%^(){}<>'
setopt no_flowcontrol

source ~/.zsh/aliases.zsh
source ~/.zsh/keys.zsh
source ~/.zsh/rbenv.zsh
source ~/.zsh/git.zsh

#source ~/.zsh/zsh-history-substring-search.zsh
#export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="bg=black,fg=green"
#export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="bg=black,fg=red"
#bindkey "^[k" history-substring-search-up
#bindkey "^[j" history-substring-search-down

prompt antonio

[[ -n $DISPLAY ]] && [[ -z $TMUX ]] && tmux

