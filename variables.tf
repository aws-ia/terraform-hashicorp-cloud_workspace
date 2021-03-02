variable "region" {
  type        = string
  default     = ""
  description = "terraform region var"
}
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
  description = "Enter a valid email address for terraform cloud notification"
  type        = string
}
variable "tfe_workspace" {
  type        = string
  description = "Leave empty for auto creation"
}
variable "AWS_ACCESS_KEY_ID" {
  type        = string
  description = "AWS_ACCESS_KEY_ID"
}

variable "AWS_SECRET_ACCESS_KEY" {
  type        = string
  description = "AWS_SECRET_ACCESS_KEY"
}
variable "working_directory" {
  description = "Sets the working directory"
  type        = string
  default     = ""
}