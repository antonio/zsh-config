source ~/.zsh/aliases.zsh
source ~/.zsh/keys.zsh
source ~/.zsh/rbenv.zsh

# prompts and themes
autoload -U promptinit && promptinit
# colors
autoload -U colors && colors
# completion system
autoload -U compinit && compinit
# history
export HISTFILE=$HOME/.zsh_history
export SAVEHIST=2000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

set -o emacs
export PS1="%m%k %B%F{cyan}%(4~|...|)%3~%F{white} %# %b%f%k"
[[ -n $DISPLAY ]] && [[ -z $TMUX ]] && tmux
