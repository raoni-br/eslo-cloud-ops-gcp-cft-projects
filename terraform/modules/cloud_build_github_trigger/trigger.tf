resource "google_cloudbuild_trigger" "github_push_trigger" {
  project = var.project_id

  name        = var.trigger_name
  description = var.trigger_description
  tags        = var.tags
  disabled    = var.disabled

  substitutions = var.substitution_variables
  filename      = var.cloudbuild_file

  ignored_files  = var.ignored_files
  included_files = var.included_files

  github {
    owner = var.github_repo_owner
    name  = var.github_repo_name

    dynamic "push" {
      for_each = var.trigger_type == "push" && var.github_push_type == "branch" ? [1] : []

      content {
        branch = "^${var.github_repo_branch}$"
      }
    }

    dynamic "push" {
      for_each = var.trigger_type == "push" && var.github_push_type == "tag" ? [1] : []

      content {
        tag = var.github_repo_tag
      }
    }

    dynamic "pull_request" {
      for_each = var.trigger_type == "pull_request" ? [1] : []
      content {
        branch = "^${var.github_repo_branch}$"
      }
    }
  }
}
