sudo bash

source $HOME/wsl_setup/scripts/helpers/toolset-scripts.sh

version=$(get_toolset_value .goenv.version)
default_go_version=$(get_toolset_value .goenv.default_go_version)

git clone --branch $version https://github.com/go-nv/goenv ~/.goenv

echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.bashrc
echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(goenv init -)"' >> ~/.bashrc

echo 'export PATH="$GOROOT/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="$PATH:$GOPATH/bin"' >> ~/.bashrc

source ~/.bashrc

goenv install $default_go_version
goenv global $default_go_version
