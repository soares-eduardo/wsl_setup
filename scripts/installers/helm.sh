source $HOME/wsl_setup/scripts/helpers/toolset-scripts.sh

version=$(get_toolset_value .helm.version)

wget https://get.helm.sh/helm-$version-linux-amd64.tar.gz

tar -zxvf helm-$version-linux-amd64.tar.gz

sudo mv linux-amd64/helm /usr/local/bin/helm

rm helm-$version-linux-amd64.tar.gz linux-amd64
