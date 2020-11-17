#Outputs

output "tfm-aws-org" {
  description = "Terraform cloud organizations"
  value       = tfe_organization.tf-org[0]

}
