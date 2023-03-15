
resource "google_project_iam_member" "monitoring_editor" {
  project = var.project_id
  role    = "roles/monitoring.editor"
  member  = "group:${var.monitoring_workspace_users}"
}
