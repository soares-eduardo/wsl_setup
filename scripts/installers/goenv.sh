source $HOME/wsl_setup/scripts/helpers/toolset-scripts.sh

version=$(get_toolset_value .goenv.version)
default_go_version=$(get_toolset_value .goenv.default_go_version)

git clone --branch $version https://github.com/go-nv/goenv ~/.goenv

# Set up environment variables
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"

eval "$(goenv init -)"

export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

goenv install $default_go_version
goenv global $default_go_version
