add_to_path() {
	export PATH="$1":"$PATH"
}
export -f add_to_path

add_to_path "$HOME/.cargo/bin"

add_to_path "$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

if [ -n "$BASH" ] && [ -r ~/.bashrc ]; then
	. ~/.bashrc
fi
