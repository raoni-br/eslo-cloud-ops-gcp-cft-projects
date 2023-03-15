module "cloud_build_push_trigger" {
  source = "../../modules/cloud_build_github_trigger"

  project_id          = module.base_shared_vpc_project.project_id
  trigger_type        = "push"
  trigger_name        = "production-deployment-tag-push-trigger"
  trigger_description = "Trigger production deployment upon tag creation in the main branch"
  ignored_files       = []
  included_files      = []
  github_repo_owner   = "eslo-platform"
  github_repo_name    = "platform-app"
  github_repo_branch  = "main"
  github_push_type    = "tag"
  tags                = []
  substitution_variables = {
    "_DOCKER_REGISTRY_FULL_PATH" : "southamerica-east1-docker.pkg.dev/eslo-shared-registry-823e/eslo-docker-repository",
  }

  cloudbuild_file = "cloudbuild-production.yaml"

  #   depends_on = [module.base_shared_vpc_project]
}
