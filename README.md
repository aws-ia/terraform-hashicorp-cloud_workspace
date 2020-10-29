
# Terraform Cloud Workspace
This module sets up your terraform org and workspace
## Authors:
- David Wright, dwright@hashicorp.com
- Tony Vattathil, tonynv@amazon.com

## Pre-Requisites
1. Install Terraform cli on workstation ([link to installation docs](https://learn.hashicorp.com/tutorials/terraform/install-cli)).
2. Log in to your Terraform Cloud account [here](https://app.terraform.io/) or [create a free account](https://app.terraform.io/signup/account).


### Setup Terraform Credentials
`terraform login`.

![tf_login](https://user-images.githubusercontent.com/5912128/94082035-da803f80-fdb4-11ea-902c-e4aa1003ac22.gif)

### Configure Terraform

1. Open a shell on your workstation.
2. Point the TERRAFORM_CONFIG file to the credentials file created by `terraform login` in **Setup Terraform Credentials** above. This allows Terraform to autenticate via the token stored in your credentials.tfrc.json file.

        export TERRAFORM_CONFIG=$HOME/.terraform.d/credentials.tfrc.json

## Using this module via GitHub
1. Git clone this repository.

        git clone https://github.com/aws-quickstart/terraform-aws-tfc_workspace.git

2. Change directory to the repository root.

        cd terraform-aws-tfc_workspace

3. Initalize the module.

        terraform init

4. Run terraform apply.

        terraform apply
