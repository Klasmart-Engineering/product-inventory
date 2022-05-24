locals {
  # Secret names
  tfe_organization_name     = var.tfe_organization_name

  tfe_tags = [
    "own:${lower(var.service_owner)}",
  ]
  working_directory = var.working_directory
}

locals {
  readme = <<EOT
Products inventory layer resources.
This module includes the following:
- Terraform Cloud (TFC) workspaces for modular designed products
EOT
}
