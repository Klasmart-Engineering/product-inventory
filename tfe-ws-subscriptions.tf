module "svc-ws-subscriptions" {
  # Module import info here
  source  = "git@github.com:KL-Infrastructure/terraform-tfe-ws-base.git?ref=v0.2.0"

  # Module inputs here
  service_owner       = "Infra"
  working_directory   = ""
  workspace_name      = "subscriptions-common-infrastructure"
  vcs_repo   = "KL-Engineering/subscriptions-common-infrastructure"

  # RBAC settings
  tfe_team_access_permissions = local.tfe_team_access_permissions
}
