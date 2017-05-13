add_to_path() {
	export PATH="$1":"$PATH"
}
export -f add_to_path

add_to_path "$HOME/.cargo/bin"

add_to_path "$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Enable touch screen scrolling for firefox
export MOZ_USE_XINPUT2=1

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

if [ -n "$BASH" ] && [ -r ~/.bashrc ]; then
	. ~/.bashrc
fi
