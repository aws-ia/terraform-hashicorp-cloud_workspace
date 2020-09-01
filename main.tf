terraform {
  required_version = ">= 0.13"
}

provider "tfe" {
  hostname = var.tfe_hostname
  token    = var.token
}

resource "tfe_organization" "tfe_organization" {
  name  = var.tfe_organization
  email = var.tfe_email
}
