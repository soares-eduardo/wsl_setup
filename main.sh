source scripts/helpers/toolset-scripts.sh

# Create workspace folder
# cd && mkdir workspace && cd wsl_setup

echo "Running apt update"
sudo apt update

# Install mandatory packages
sudo apt install -y jq bats

# Install APT packages from toolset file
packages=$(get_toolset_value .apt_packages[])
for package in $packages; do
	echo "Installing $package"
	sudo apt install -y $package
done

# Execute installer scripts
for installer in scripts/installers/*.sh; do
	source "$installer"
done

# Append aliases inside .bashrc file
cat "alias.txt" >> ~/.bashrc
source ~/.bashrc
	