source $HOME/wsl_setup/scripts/helpers/toolset-scripts.sh

version=$(get_toolset_value .terraform_docs.version)

curl -sSLo ./terraform-docs.tar.gz https://terraform-docs.io/dl/$version/terraform-docs-$version-$(uname)-amd64.tar.gz

tar -xvf terraform-docs.tar.gz terraform-docs

chmod +x terraform-docs
sudo mv terraform-docs /usr/local/bin/terraform-docs

rm terraform-docs.tar.gz terraform-docs
