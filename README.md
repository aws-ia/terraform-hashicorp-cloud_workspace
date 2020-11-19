
# Terraform Cloud Workspace 
This module configures your Terraform organization and workspace.  
Authors: David Wright (dwright@hashicorp.com) and Tony Vattahil (tonynv@amazon.com)

To deploy this module, do the following:
1. Install Terraform. (See [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) for a tutorial.) 
2. Sign up and log into [Terraform Cloud](https://app.terraform.io/signup/account). (There is a free tier available.)

> Run these commands in order:

3. Clone the **aws-quickstart/terraform-tfc_workspace** repository.

        git clone https://github.com/aws-quickstart/terraform-aws-tfc_workspace.git

4. Change directory to the root directory.

        cd terraform-aws-tfc_workspace

5. Run `terraform login`.
6. Run `export TERRAFORM_CONFIG="$HOME/.terraform.d/credentials.tfrc.json"`.
7. Run `terraform init`.
# Configure your tfvars file

**Example tfvas file (replace *** with AKEY and SKEY)**

  `AWS_SECRET_ACCESS_KEY` = "*****************"

  `AWS_ACCESS_KEY_ID`     = "*****************"

> !!!!CAUTION!!!!: Make sure your credential are secured ourside version control (and follow secrets mangement bestpractices)

#  Run terraform apply with tfvars file
8. terraform apply  -var-file="/Users/username/.aws/terraform.tfvars"

