module "monitoring_project" {
  source                     = "../../modules/cloud_monitoring"
  monitoring_project_id      = var.monitoring_project_id
  monitoring_workspace_users = var.monitoring_workspace_users
}
