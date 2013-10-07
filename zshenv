export EDITOR=vim
export DE=gnome
export BROWSER=/usr/bin/chromium
export _JAVA_AWT_WM_NONREPARENTING=1 # Fix Java for AwesomeWM
export GTK2_RC_FILES="$HOME/.gtkrc-2.0" # qtconfig using gtk
export http_proxy="http://localhost:8118"
export https_proxy="https://localhost:8118"
export no_proxy="localhost,127.0.0.1,vcint.com, vcint.local"
export RUBY_GC_MALLOC_LIMIT=60000000
export RUBY_FREE_MIN=200000
export PAGER='less'
export LESS='-XR'
export LESSOPEN='|colorize_script %s'

fpath+=(~/.zsh/functions)
path+=(~/.bin /usr/local/heroku/bin /opt/android-sdk/platform-tools)
