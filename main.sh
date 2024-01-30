source scripts/helpers/toolset-scripts.sh

# Create workspace folder
# cd && mkdir workspace && cd wsl_setup

# Execute installer scripts
for installer in scripts/installers/*.sh; do
	bash "$installer"
done

# Install APT packages from toolset file
echo "Running apt update"
sudo apt update

packages=$(get_toolset_value .apt_packages[])
for package in $packages; do
	echo "Installing $package"
	sudo apt install $package
done

# Append aliases inside .bashrc file
cat "alias.txt" >> ~/.bashrc
source ~/.bashrc