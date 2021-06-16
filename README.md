
# Terraform Cloud Workspace 
This module configures your Terraform organization and workspace.  
Authors: David Wright (dwright@hashicorp.com) and Tony Vattahil (tonynv@amazon.com)

# Install Terraform
To deploy this module, do the following:
Install Terraform. (See [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) for a tutorial.) 

# Sign up for Terraform Cloud
Sign up and log into [Terraform Cloud](https://app.terraform.io/signup/account). (There is a free tier available.)

## Configure Terraform Cloud API Access

Generate terraform cloud token

`terraform login` 

Export TERRAFORM_CONFIG

`export TERRAFORM_CONFIG="$HOME/.terraform.d/credentials.tfrc.json"`

# Configure your tfvars file

**Example tfvars file (replace *** with AKEY and SKEY)**

`AWS_SECRET_ACCESS_KEY` = "*****************"

`AWS_ACCESS_KEY_ID`     = "*****************"

`AWS_SESSION_TOKEN` = "*****************"

Note: STS-based credentials _are optional_ but *highly recommended*. 

> !!!!CAUTION!!!!: Make sure your credential are secured ourside version control (and follow secrets mangement bestpractices)

# Deploy this module (instruction for linux or mac)

## Clone the repo (requires git client)

> !!!!WARNING!!!!: Run these commands in order:

Clone the **aws-ia/terraform-hashicorp-cloud_workspace** repository.

`git clone https://github.com/aws-ia/terraform-hashicorp-cloud_workspace.git`

Change directory to the root directory.

`cd terraform-hashicorp-cloud_workspace`

Initalize terrafrom module

`terraform init`

Run terraform apply with tfvars file

`terraform apply  -var-file="$HOME/.aws/terraform.tfvars"`

