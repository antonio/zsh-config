# prompts and themes
autoload -Uz promptinit
setopt promptsubst
promptinit

# colors
autoload -U colors && colors

# completion system
autoload -U compinit && compinit

# vcsinfo stuff
autoload -Uz vcs_info
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats " ($fg[magenta]%b$fg[white]) %u%c"
zstyle ':vcs_info:*' actionformats " ($fg[magenta]%b$fg[white]|$fg[yellow]%a$fg[white]) %u%c"
zstyle ':vcs_info:*' unstagedstr "$fg_no_bold[red]⎈$fg[white]"
zstyle ':vcs_info:*' stagedstr "$fg[green]⎈$fg[white]"
# IDEAS
# - stash info
# - tell if there have been changes upstream or we are ahead

prompt antonio

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

source ~/.zsh/zsh-history-substring-search.zsh
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="bg=black,fg=green"
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="bg=black,fg=red"
bindkey "^[k" history-substring-search-up
bindkey "^[j" history-substring-search-down

[[ -n $DISPLAY ]] && [[ -z $TMUX ]] && tmux

