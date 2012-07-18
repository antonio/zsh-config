# prompts and themes
fpath=(~/.zsh/functions $fpath)
autoload -U promptinit && promptinit

prompt antonio

# colors
autoload -U colors && colors

# completion system
autoload -U compinit && compinit

# zmv
autoload -U zmv

set -o emacs

# history
export HISTFILE=$HOME/.zhistory
export SAVEHIST=2000
export HISTSIZE=2000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

source ~/.zsh/aliases.zsh
source ~/.zsh/keys.zsh
source ~/.zsh/rbenv.zsh
source ~/.zsh/git.zsh

source ~/.zsh/zsh-history-substring-search.zsh
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="bg=black,fg=green"
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="bg=black,fg=red"
bindkey "^[k" history-substring-search-up
bindkey "^[j" history-substring-search-down

[[ -n $DISPLAY ]] && [[ -z $TMUX ]] && tmux

