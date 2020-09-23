# Terraform Cloud Workspace
This module sets up your terraform org and workspace

#### Pre-Requisites
Install Terraform cli on workstation [link to installation docs](https://learn.hashicorp.com/tutorials/terraform/install-cli)

Login to Terraform Cloud account [here](https://app.terraform.io/) or  [create a free account](https://app.terraform.io/signup/account)


## Setup Terraform Credentials
`terraform login`

![tf_login](https://user-images.githubusercontent.com/5912128/94082035-da803f80-fdb4-11ea-902c-e4aa1003ac22.gif)

## Configure Terraform

Open a shell on your workstation and point the TERRAFORM_CONFIG file to the credentials file created by terrafrom login in the previous step. This allows terraform to autenticate via the terraform _token_ stored in your _credentials.tfrc.json file_

`export TERRAFORM_CONFIG=$HOME/.terraform.d/credentials.tfrc.json`
