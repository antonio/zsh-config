export EDITOR=e
export DE=gnome
export BROWSER=/usr/bin/chromium
export _JAVA_AWT_WM_NONREPARENTING=1 # Fix Java for AwesomeWM
export GTK2_RC_FILES="$HOME/.gtkrc-2.0" # qtconfig using gtk
export RUBY_GC_MALLOC_LIMIT=60000000
export RUBY_GC_HEAP_FREE_SLOTS=200000
export PAGER='less'
export LESS='-XR'
export LESSOPEN='|colorize_script %s'

fpath+=(~/.zsh/functions ~/.zsh/zsh-completions)
path+=(./bin ~/.bin /usr/local/bin)
