#!/usr/bin/env bash

add_to_path() {
	export PATH="$1":"$PATH"
}

add_to_path "$HOME/.cargo/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc

add_to_path "$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
