# prompts and themes
autoload -Uz promptinit
setopt promptsubst
promptinit

# colors
autoload -U colors && colors

# zmv
autoload -U zmv

# path
typeset -U PATH

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

# globbing
setopt extended_glob

# ux
export WORDCHARS='*?_-[]~=&;!#$%^(){}<>'
setopt no_flowcontrol

# time commands that run for a long time
export REPORTTIME=5

source ~/.zsh/aliases.zsh
source ~/.zsh/git.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/fasd.zsh
source ~/.zsh/wakeonlan.zsh
source ~/.zsh/keys.zsh

[[ -f "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"

prompt antonio

if $(which chruby > /dev/null); then
  chruby ruby
fi

# completion system
autoload -U compinit && compinit

[[ -n $DISPLAY ]] && [[ -z $TMUX ]] && tmux

if [[ -n $TMUX ]]; then
  window_name=$(tmux display -p "#W")
  if [[ $window_name =~ "reattach" ]]; then
    printf '\033kshell\033\\'
  fi
fi
