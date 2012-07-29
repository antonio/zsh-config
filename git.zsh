# vcsinfo stuff
autoload -Uz vcs_info
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats " ($fg[magenta]%b$fg[white])%u%c%m"
zstyle ':vcs_info:*' actionformats " ($fg[magenta]%b$fg[white]|$fg[yellow]%a$fg[white])%u%c%m"
zstyle ':vcs_info:*' unstagedstr " $fg_no_bold[red]◼$fg[white]"
zstyle ':vcs_info:*' stagedstr " $fg[green]◼$fg[white]"
zstyle ':vcs_info:git+set-message:*' hooks stash ahead

+vi-stash() {
  if [[ -s ${hook_com[base]}/.git/refs/stash ]] ; then
    local -a stash
    stash=$(git stash list 2>/dev/null | wc -l)
    hook_com[misc]+=" ($fg[yellow]stash$fg[white]:$fg[yellow]${stash}$fg[white])"
  fi
}
+vi-ahead() {
  ahead=$(git cherry 2>/dev/null | wc -l)
  if [[ $ahead -gt 0 ]] ; then
    hook_com[misc]+=" ($fg_bold[blue]ahead$fg[white])"
  fi
}
