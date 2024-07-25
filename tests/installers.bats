#!/usr/bin/env bats

source $HOME/wsl_setup/scripts/helpers/toolset-scripts.sh

# @test "Should verify Terraform version" {
#   terraformVersion=$(get_toolset_value .terraform.version)
#   result=$(terraform --version | grep -oE 'v[0-9]+\.[0-9]+\.[0-9]+' | head -1)
#   [ "$result" = "$terraformVersion" ]
# }

@test "Should verify Terragrunt version" {
  terragruntVersion=$(get_toolset_value .terragrunt.version)
  result=$(terragrunt --version | grep -oE 'v[0-9]+\.[0-9]+\.[0-9]+' | head -1)
  [ "$result" = "$terragruntVersion" ]
}

@test "Should verify Terraform-docs version" {
  terraformDocsVersion=$(get_toolset_value .terraform_docs.version)
  result=$(terraform-docs --version | grep -oE 'v[0-9]+\.[0-9]+\.[0-9]+' | head -1)
  [ "$result" = "$terraformDocsVersion" ]
}

@test "Should verify Helm version" {
  helmVersion=$(get_toolset_value .helm.version)
  result=$(helm version --client --short | sed -n 's/.*\(v[0-9.]*\).*/\1/p')
  [ "$result" = "$helmVersion" ]
}

# @test "Should verify Kubectl version" {
#   kubectlVersion=$(get_toolset_value .kubectl.version)
#   result=$(kubectl version -o json | jq .clientVersion.gitVersion)
#   [ "$result" = "$kubectlVersion" ]
# }
