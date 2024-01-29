get_toolset_value() {
	echo "$(jq -r "$1" "$HOME/wsl_setup/toolset.json")"
}
