get_toolset_value() {
	echo "$(jq -r "$1" "toolset.json")"
}

# Create workspace folder

cd && cd workspace

# Install APT packages

echo "Run apt update"
sudo apt update

packages=$(get_toolset_value .apt_packages[])
for package in $packages; do
	echo "Installing $package"
	sudo apt install $package
done
