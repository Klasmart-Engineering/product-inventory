module "svc-ws-products-core" {
  # Module import info here
  source = "git@github.com:KL-Infrastructure/terraform-tfe-ws-base.git?ref=v0.3.0"

  # Module inputs here
  service_owner     = "Infra"
  working_directory = "common"
  workspace_name    = "products-core-common-infrastructure"
  vcs_repo          = "KL-Engineering/products-core-gitops-env"

  # RBAC settings
  tfe_team_access_permissions = local.tfe_team_access_permissions
  allow_destroy_plan          = false
  tags = [
    "lay:inventory",
    "own:infra"
  ]
}
