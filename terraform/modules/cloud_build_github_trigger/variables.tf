variable "project_id" {
  description = "Project Id that hosts the cloud build trigger"
  type        = string
}

variable "trigger_type" {
  description = "Cloud build trigger type: pull_request | push"
  type        = string
}

variable "trigger_name" {
  description = "Cloud build trigger name"
  type        = string
}

variable "trigger_description" {
  description = "Cloud build trigger description"
  type        = string
}

variable "ignored_files" {
  description = "Glob pattern of files to be ignored in order to trigger the build or not"
  type        = list(string)
  default     = null
}

variable "included_files" {
  description = "Glob pattern of files to be considered in order to trigger the build or not"
  type        = list(string)
  default     = null
}

variable "github_repo_owner" {
  description = "Organisation/Account that owns the repository"
  type        = string
}

variable "github_repo_name" {
  description = "Github repository name"
  type        = string
}

variable "github_push_type" {
  description = "Github push type: branch | tag"
  type        = string
  default     = "branch"
}
variable "github_repo_branch" {
  description = "Github repository branch regex"
  type        = string
}

variable "github_repo_tag" {
  description = "Github repository tag regex"
  type        = string
  default     = "^v(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)$"
}

variable "tags" {
  description = "Tags for annotation"
  type        = list(string)
  default     = []
}

variable "disabled" {
  description = "Whether the trigger is disabled or not"
  type        = bool
  default     = false
}

variable "substitution_variables" {
  description = "Substitutions data for Build resource."
  type        = map(string)
  default     = null
}

variable "cloudbuild_file" {
  description = "Path to the cloudbuild yaml file"
  type        = string
}
