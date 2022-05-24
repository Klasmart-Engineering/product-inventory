module "svc-ws-service-meta-data" {
  # Module import info here
  source  = "../svc-inventory-workspace-module"

  # Module inputs here
  service_owner       = "Infra"
  working_directory   = ""
  workspace_name      = "subscriptions-common-infrastructure"
  service_meta_repo   = "KL-Engineering/subscriptions-common-infrastructure"

  # RBAC settings
  tfe_team_access_permissions = local.tfe_team_access_permissions
}
