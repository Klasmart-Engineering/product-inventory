module "svc-ws-subscriptions" {
  # Module import info here
  source  = "./modules/tfe-workspace-module"

  # Module inputs here
  service_owner       = "Infra"
  working_directory   = ""
  workspace_name      = "subscriptions-common-infrastructure"
  vcs_repo   = "KL-Engineering/subscriptions-common-infrastructure"

  # RBAC settings
  tfe_team_access_permissions = local.tfe_team_access_permissions
}
