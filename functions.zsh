man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

e() {
  emacsclient -c -a '' $* &
}

fname() {
  find . -name "*$**"
}

update-submodules() {
  git submodule foreach 'git pull origin master'
}

update-git-repos() {
  cwd=$(pwd)
  for dir in $(find -type d -name '.git'); do
    cd ${dir}/..
    git pull origin master
    cd ${cwd}
  done
}

tmux-rename-to-current() {
  tmux renamew $(basename "$(pwd)")
}

bak() {
  cp -ri $1{,.bak}
}

unbak() {
  cp -ri $1{.bak,}
  rm -ri $1.bak
}

create-emacs-project() {
  echo "((nil . ((default-directory . \"$(pwd)\"))))" > .dir-locals.el
  git ignore .dir-locals.el
}
