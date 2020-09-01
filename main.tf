terraform {
  required_version = ">= 0.13"
}

provider "tfe" {
  hostname = var.tfe_hostname
  token    = var.token
}

