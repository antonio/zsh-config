export EDITOR=vim
export BROWSER=/usr/bin/chromium
export PATH=$HOME/.bin:$PATH
export _JAVA_AWT_WM_NONREPARENTING=1 # Fix Java for AwesomeWM
export GTK2_RC_FILES="$HOME/.gtkrc-2.0" # qtconfig using gtk
export http_proxy="localhost:8118"
export https_proxy="localhost:8118"
fpath+=(~/.zsh/functions)
