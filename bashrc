#!/usr/bin/env bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

create_aliases() {
	alias grep='grep --color=auto --exclude=*~'
	alias ls='ls --color=auto'
	alias xclip='xclip -selection clipboard'
}

add_to_path() {
	export PATH="$1":"$PATH"
}

setup_ellipsis() {
	export ELLIPSIS_PROTO=ssh
	add_to_path $HOME/.ellipsis/bin
}

setup_all_the_bash_stuff() {
	setup_bash_it() {
		export BASH_IT="$HOME/.bash_it"
		export BASH_IT_THEME='bobby'
		export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1
		export SCM_CHECK=true  # Show SCM status in prompt
		source $BASH_IT/bash_it.sh
	}
	setup_random_bash_variables() {
		export EDITOR=nvim
		unset MAILCHECK  # Never check mail
		tput smkx  # Fix delete key interopability
		export NO_AT_BRIDGE=1  # http://unix.stackexchange.com/questions/230238
		export HISTSIZE=100000  # More command history! YAY!
		export HISTFILESIZE=10000000  # and the space to store those commands
		export HISTCONTROL=ignoreboth  # Ignore duplicate commands and commands that start with ' '
		export HISTIGNORE='ls:bg:fg:history'
		safe_append_prompt_command 'history -a'  # Store history immediately
	}
	setup_bash_it
	setup_random_bash_variables
}

create_aliases

setup_all_the_bash_stuff
setup_ellipsis

add_to_path $HOME/.local/bin
add_to_path $HOME/.cabal/bin

