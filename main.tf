terraform {
  required_version = ">= 0.13"
}

provider "tfe" {
  hostname = var.tfe_hostname
  token    = var.tfe_token
}

resource "tfe_organization" "org" {
  name  = var.tfe_organization
  email = var.tfe_email
}


resource "tfe_workspace" "workspace" {
  name         = var.tfe_workspace
  organization = tfe_organization.org.name
}
