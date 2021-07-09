###########
# pre-reqs
# terraform login
# export TERRAFORM_CONFIG=$HOME/.terraform.d/credentials.tfrc.json"
##########

terraform {
  required_version = ">= 1.0.1"

}

provider "tfe" {
  hostname = var.tfe_hostname
}

locals {
  delimiter        = "-"
  org_prefix       = "tfm-aws"
  random_workspace = "${local.org_prefix}${local.delimiter}${random_string.rand4.result}"
  random_org       = "${local.org_prefix}${local.delimiter}${random_pet.name.id}"
}

resource "random_pet" "name" {
  length = 1
}

resource "random_string" "rand4" {
  length  = 4
  special = false
  upper   = false
}

resource "tfe_organization" "tf-org" {
  name  = var.tfe_organization == "" ? local.random_org : var.tfe_organization
  email = var.tfe_email == "" ? "someone@mycompany.com" : var.tfe_email
  count = var.tfe_organization != "" ? 0 : 1
}

resource "tfe_workspace" "tf-workspace" {
  depends_on        = [tfe_organization.tf-org]
  name              = var.tfe_workspace == "" ? local.random_workspace : var.tfe_workspace
  organization      = var.tfe_organization != "" ? var.tfe_organization : tfe_organization.tf-org[0].name
  working_directory = var.working_directory
}

resource "tfe_variable" "AWS_SECRET_ACCESS_KEY" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.AWS_SECRET_ACCESS_KEY
  sensitive    = true
  category     = "env"
  workspace_id = tfe_workspace.tf-workspace.id
  description  = "AWS_SECRET_ACCESS_KEY"
}

resource "tfe_variable" "AWS_ACCESS_KEY_ID" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.AWS_ACCESS_KEY_ID
  category     = "env"
  workspace_id = tfe_workspace.tf-workspace.id
  description  = "AWS_ACCESS_KEY_ID"
}
resource "tfe_variable" "AWS_SESSION_TOKEN" {
  count        = var.AWS_SESSION_TOKEN == "" ? 0 : 1
  key          = "AWS_SESSION_TOKEN"
  value        = var.AWS_SESSION_TOKEN
  category     = "env"
  workspace_id = tfe_workspace.tf-workspace.id
  description  = "AWS_SESSION_TOKEN"
  sensitive    = true
}
resource "tfe_variable" "region" {
  key          = "region"
  value        = var.region
  category     = "terraform"
  workspace_id = tfe_workspace.tf-workspace.id
  description  = "AWS Region"
}

resource "local_file" "backend_file" {
  filename = "backend.hcl"
  content  = <<EOF
workspaces { name = "${tfe_workspace.tf-workspace.name}" }
hostname = "${var.tfe_hostname}"
organization = "${tfe_workspace.tf-workspace.organization}"
EOF
}
