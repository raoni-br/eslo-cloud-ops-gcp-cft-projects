module "monitoring_project" {
  source                     = "../../modules/cloud_monitoring"
  project_id                 = module.base_shared_vpc_project.project_id
  monitoring_workspace_users = var.monitoring_workspace_users
}
