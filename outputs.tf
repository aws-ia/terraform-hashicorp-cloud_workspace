#Outputs

output "tfm-aws-org" {
  description = "Terraform cloud organizations"
  value       = tfe_organization.tf-org[0]

}

output "tfm-aws-workspace" {
  description = "Terraform cloud workspace"
  value       = tfe_workspace.tf-workspace

}
