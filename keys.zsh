bindkey "^[j" down-line-or-history
bindkey "^[k" up-line-or-history
bindkey " " magic-space

zle -N tmux-rename tmux-rename-to-current
bindkey "^[r" tmux-rename
