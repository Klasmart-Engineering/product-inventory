locals {
  # Secret names
  tfe_organization_name     = var.tfe_organization_name

  tfe_tags = [
    "own:${lower(var.service_owner)}",
  ]
  working_directory = var.working_directory
}

locals {
  readme = var.readme
}
