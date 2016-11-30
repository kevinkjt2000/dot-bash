#!/usr/bin/env bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

create_aliases() {
  alias grep='grep --color=auto --exclude=*~'
  alias ls='ls --color=auto'
}

add_to_path() {
  export PATH="$1":$PATH
}

setup_bash_it() {
  export BASH_IT="$HOME/.bash_it"
  export BASH_IT_THEME='bobby'
  export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1
  export SCM_CHECK=true  # Show SCM status in prompt
  source $BASH_IT/bash_it.sh
}

setup_ellipsis() {
  export ELLIPSIS_PROTO=ssh
  add_to_path $HOME/.ellipsis/bin
}

setup_random_bash_variables() {
  unset MAILCHECK  # Never check mail
}

create_aliases

setup_bash_it
setup_ellipsis
setup_random_bash_variables

add_to_path $HOME/.local/bin

export P4CONFIG=.p4config

