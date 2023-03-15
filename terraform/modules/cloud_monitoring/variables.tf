variable "project_id" {
  description = "The name of the GCP project that is used to monitor the enviroment"
  type        = string
}

variable "monitoring_workspace_users" {
  description = "Gsuite or Cloud Identity group that have access to Monitoring Workspaces."
  type        = string
}
