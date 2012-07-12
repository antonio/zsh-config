source ~/.zsh/aliases.zsh

# prompts and themes
autoload -U promptinit && promptinit
# colors
autoload -U colors && colors
# completion system
autoload -U compinit && compinit
# history
export SAVEHIST=2000
#export HISTFILE=$HOME/.zsh_history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

[[ -z $TMUX ]] && tmux
