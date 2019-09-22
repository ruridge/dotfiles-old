#!/bin/zsh

# PATH
export VISUAL=vim
export EDITOR="$VISUAL"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Use vim for editing config files
alias zshconfig="vim ~/.zshrc"
alias envconfig="vim ~/Code/config/env.sh"
alias tmuxconfig="vim ~/.tmux.conf"

# tmux aliases

# Attaches tmux to the last session; creates a new session if none exists.
alias t="tmux attach || tmux new-session"
# Attaches tmux to a session (example: ta front)
alias ta="tmux attach -t"
# Creates a new session (example: tn front)
alias tn="tmux new-session -s"
# Lists all ongoing sessions
alias tl="tmux list-sessions"
# Kills a tmux session
alias tk="tmux kill-session -t"

# Open Chrome Canary with CORS disabled
function nocors() { open -a Google\ Chrome\ Canary --args --disable-web-security --user-data-dir }
