source scripts/helpers/toolset-scripts.sh

# Create workspace folder
# cd && mkdir workspace && cd wsl_setup

# Install APT packages from toolset file
echo "Running apt update"
sudo apt update

packages=$(get_toolset_value .apt_packages[])
for package in $packages; do
	echo "Installing $package"
	sudo apt install $package
done
