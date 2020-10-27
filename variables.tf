variable "tfe_hostname" {
  type        = string
  default     = "app.terraform.io"
  description = "Defaults to terraform cloud"
}
variable "tfe_organization" {
  type        = string
  description = "Leave empty for auto creation"
}
variable "tfe_email" {
  type = string
}
variable "tfe_workspace" {
  type        = string
  description = "Leave empty for auto creation"
}