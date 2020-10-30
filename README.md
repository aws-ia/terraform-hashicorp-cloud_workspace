
# Terraform Cloud Workspace
This module configures your Terraform organization and workspace.

## Authors
- David Wright (dwright@hashicorp.com)
- Tony Vattathil (tonynv@amazon.com)

## Pre-Requisites
1. Install Terraform. (See [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) for a tutorial.)

2. [Log in](https://app.terraform.io/) to Terraform Cloud or [create a free account](https://app.terraform.io/signup/account).


### Setup Terraform Credentials
1. [Log in](https://app.terraform.io/) to Terraform Cloud.

2. Run `terraform login` in the terminal.
3. Enter 'yes' when prompted.
4. Enter a description (such as 'terraform aws-quickstart') in the **Create API token dialog**.
5. Select **Create API token**.
6. Copy the token that displays and paste it into the terminal where prompted. The token will now be stored in the **credentials.tfrc.json** file.

### Configure Terraform
1. Open a shell on your workstation.
2. Run the following command to allow authentication of Terraform via the token stored in your credentials.tfrc.json file.

        export TERRAFORM_CONFIG=$HOME/.terraform.d/credentials.tfrc.json


![tf_login](https://user-images.githubusercontent.com/5912128/94082035-da803f80-fdb4-11ea-902c-e4aa1003ac22.gif)

## Deploy module on GitHub
1. Clone this repository.

        git clone https://github.com/aws-quickstart/terraform-aws-tfc_workspace.git

2. Change directory to the repository root.

        cd terraform-aws-tfc_workspace

3. Initalize the module.

        terraform init

4. Run terraform apply.

        terraform apply
