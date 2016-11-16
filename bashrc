#!/usr/bin/env bash

setup_bash_it() {
  export BASH_IT="$HOME/.bash_it"
  export BASH_IT_THEME='bobby'
  export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1
  export SCM_CHECK=true  # Show SCM status in prompt
  source $BASH_IT/bash_it.sh
}

setup_ellipsis() {
  export ELLIPSIS_PROTO=ssh
  export PATH=$PATH:~/.ellipsis/bin
}

setup_random_bash_variables() {
  unset MAILCHECK  # Never check mail
}

setup_bash_it
setup_ellipsis
setup_random_bash_variables

