module "cloud_build_push_trigger" {
  source = "../../modules/cloud_build_github_trigger"

  project_id          = module.base_shared_vpc_project.project_id
  trigger_type        = "push"
  trigger_name        = "main-push-trigger"
  trigger_description = "Trigger for pushes in the main branch"
  ignored_files       = []
  included_files      = []
  github_repo_owner   = "eslo-platform"
  github_repo_name    = "platform-app"
  github_repo_branch  = "main"
  tags                = []
  substitution_variables = {
    "_DOCKER_REGISTRY_FULL_PATH" : "southamerica-east1-docker.pkg.dev/eslo-shared-registry-823e/eslo-docker-repository",
  }

  cloudbuild_file = "cloudbuild.yaml"

  #   depends_on = [module.base_shared_vpc_project]
}

module "cloud_build_pr_trigger" {
  source = "../../modules/cloud_build_github_trigger"

  project_id          = module.base_shared_vpc_project.project_id
  trigger_type        = "pull_request"
  trigger_name        = "main-pr-trigger"
  trigger_description = "Trigger for PRs in the main branch"
  ignored_files       = []
  included_files      = []
  github_repo_owner   = "eslo-platform"
  github_repo_name    = "platform-app"
  github_repo_branch  = "main"
  tags                = []
  substitution_variables = {
    "_DOCKER_REGISTRY_FULL_PATH" : "southamerica-east1-docker.pkg.dev/eslo-shared-registry-823e/eslo-docker-repository",
  }

  cloudbuild_file = "cloudbuild-pull-request.yaml"

  #   depends_on = [module.base_shared_vpc_project]
}
