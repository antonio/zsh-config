source ~/.zsh/aliases.zsh
source ~/.zsh/keys.zsh

# prompts and themes
autoload -U promptinit && promptinit
# colors
autoload -U colors && colors
# completion system
autoload -U compinit && compinit
# history
export HISTFILE=$HOME/.zsh_history
export SAVEHIST=2000
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

set -o emacs
export PS1="%m%k %B%F{cyan}%(4~|...|)%3~%F{white} %# %b%f%k"
[[ -n $DISPLAY ]] && [[ -z $TMUX ]] && tmux
