###########
# pre-reqs
# terraform login
# export TERRAFORM_CONFIG=$HOME/.terraform.d/credentials.tfrc.json"
##########

terraform {
  required_version = ">= 0.13"
}
locals {
    delimiter = "-"
    org_prefix = "aws-quickstart"
    random_workspace = "${local.org_prefix}${local.delimiter}${random_string.rand4.result}"
    random_org = "${local.org_prefix}${local.delimiter}${random_pet.name.id}"
}
resource "random_pet" "name" {
  length = 1
}

resource "random_string" "rand4" {
  length = 4
  special = false
  upper = false 
}

resource "tfe_organization" "qs-org" {
  name         = var.tfe_organization == "" ? local.random_org : var.tfe_organization
  email = "admin@your-company.com"
}

resource "tfe_workspace" "qs-workspace" {
  name         = var.tfe_workspace == "" ? local.random_workspace : var.tfe_workspace
  organization = tfe_organization.qs-org.name
}

resource  "null_resource" "backend_file" {
  depends_on = [tfe_workspace.qs-workspace]
  provisioner "local-exec" {
  command =  "echo  workspaces '{' name = \\\"${tfe_workspace.qs-workspace.name}\\\" '}' >> backend.hcl"
  }
  provisioner "local-exec" {
  command =  "echo hostname = \\\"app.terraform.io\\\" >> backend.hcl"
  }
  provisioner "local-exec" {
  command =  "echo  organization = \\\"${tfe_organization.qs-org.name}\\\" >> backend.hcl"
  }
}