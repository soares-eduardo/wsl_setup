source scripts/helpers/toolset-scripts.sh

# Create workspace folder
# cd && mkdir workspace && cd wsl_setup

# Install APT packages from toolset file
echo "Running apt update"
sudo apt update
sudo apt install jq

packages=$(get_toolset_value .apt_packages[])
for package in $packages; do
	echo "Installing $package"
	sudo apt install $package
done

# Execute installer scripts
for installer in scripts/installers/*.sh; do
	bash "$installer"
done

# Append aliases inside .bashrc file
cat "alias.txt" >> ~/.bashrc
source ~/.bashrc