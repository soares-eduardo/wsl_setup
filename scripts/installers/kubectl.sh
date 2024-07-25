source $HOME/wsl_setup/scripts/helpers/toolset-scripts.sh

version=$(get_toolset_value .kubectl.version)

curl -LO "https://dl.k8s.io/release/$version/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl
