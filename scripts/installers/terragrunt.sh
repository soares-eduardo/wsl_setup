source $HOME/wsl_setup/scripts/helpers/toolset-scripts.sh

version=$(get_toolset_value .terragrunt.version)

wget https://github.com/gruntwork-io/terragrunt/releases/download/$version/terragrunt_linux_amd64

mv terragrunt_linux_amd64 terragrunt

chmod u+x terragrunt

sudo mv terragrunt /usr/local/bin/terragrunt
