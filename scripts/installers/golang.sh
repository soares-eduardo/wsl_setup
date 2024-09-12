source $HOME/wsl_setup/scripts/helpers/toolset-scripts.sh

version=$(get_toolset_value .golang.version)
arch=$(get_toolset_value .golang.arch)

wget https://go.dev/dl/go$version.linux-$arch.tar.gz
sudo tar -C /usr/local/bin -xzf go$vesion.linux-$arch.tar.gz

echo "export PATH=\$PATH:/usr/local/bin/go/bin" >> ~/.bashrc

source ~/.bashrc
