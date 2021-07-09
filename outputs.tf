#Outputs

output "tfcloud-org-name" {
  description = "Terraform cloud organization name"
  value       = var.tfe_organization == "" ? element(concat(tfe_organization.tf-org.*.name, [""]), 0) : var.tfe_organization
}

output "tfcloud-workspace-name" {
  description = "Terraform cloud workspace name"
  value       = tfe_workspace.tf-ws.name
}

output "tfm-aws-workspace-id" {
  description = "Terraform cloud workspace"
  value       = tfe_workspace.tf-ws.id
}
