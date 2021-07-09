
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

# How to use this module to setup the deploy example for your module (instruction for linux or mac)

Clone the **aws-ia/terraform-hashicorp-cloud_workspace** repository.

`git clone https://github.com/aws-ia/terraform-hashicorp-cloud_workspace.git`

Copy **terraform-hashicorp-cloud_workspace/setup_workspace** folder to the root of your module 

eg: `cp terraform-hashicorp-cloud_workspace/setup_workspace /path/to/your/module`

Create `deploy` folder in the root of your module.

eg: `mkdir /path/to/your/module/deploy`

Change to setup_workspace directory

`cd /path/to/your/module/setup_workspace`

Run to following commands in order:

terraform init

`terraform apply` or `terraform apply -var-file="$HOME/.aws/terraform.tfvars"`

> This command generates a `backend.hcl`

cd ../deploy

You will see a backend.hcl for newly created workspace




