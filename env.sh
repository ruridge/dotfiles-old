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

# Open Chrom Canary with CORS disabled
function nocors() { open -a Google\ Chrome\ Canary --args --disable-web-security --user-data-dir }
