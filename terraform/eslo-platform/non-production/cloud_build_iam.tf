resource "google_project_iam_member" "sa_admin" {
  project = module.base_shared_vpc_project.project_id
  role    = "roles/iam.serviceAccountAdmin"
  member  = "serviceAccount:${module.base_shared_vpc_project.project_number}@cloudbuild.gserviceaccount.com"

  #   depends_on = [module.base_shared_vpc_project]
}

resource "google_project_iam_member" "sa_user" {
  project = module.base_shared_vpc_project.project_id
  role    = "roles/iam.serviceAccountUser"
  member  = "serviceAccount:${module.base_shared_vpc_project.project_number}@cloudbuild.gserviceaccount.com"

  #   depends_on = [module.base_shared_vpc_project]
}

resource "google_project_iam_member" "project_iam_admin" {
  project = module.base_shared_vpc_project.project_id
  role    = "roles/resourcemanager.projectIamAdmin"
  member  = "serviceAccount:${module.base_shared_vpc_project.project_number}@cloudbuild.gserviceaccount.com"

  #   depends_on = [module.base_shared_vpc_project]
}

resource "google_project_iam_member" "role_viewer" {
  project = module.base_shared_vpc_project.project_id
  role    = "roles/iam.roleViewer"
  member  = "serviceAccount:${module.base_shared_vpc_project.project_number}@cloudbuild.gserviceaccount.com"

  #   depends_on = [module.base_shared_vpc_project]
}

resource "google_project_iam_member" "load_balancer_admin" {
  project = module.base_shared_vpc_project.project_id
  role    = "roles/compute.loadBalancerAdmin"
  member  = "serviceAccount:${module.base_shared_vpc_project.project_number}@cloudbuild.gserviceaccount.com"

  #   depends_on = [module.base_shared_vpc_project]
}

resource "google_project_iam_member" "cloud_run_admin" {
  project = module.base_shared_vpc_project.project_id
  role    = "roles/run.admin"
  member  = "serviceAccount:${module.base_shared_vpc_project.project_number}@cloudbuild.gserviceaccount.com"

  #   depends_on = [module.base_shared_vpc_project]
}

resource "google_project_iam_member" "cloud_sql_admin" {
  project = module.base_shared_vpc_project.project_id
  role    = "roles/cloudsql.admin"
  member  = "serviceAccount:${module.base_shared_vpc_project.project_number}@cloudbuild.gserviceaccount.com"

  #   depends_on = [module.base_shared_vpc_project]
}

resource "google_project_iam_member" "sre_admin_build_editor" {
  project = module.base_shared_vpc_project.project_id
  role    = "roles/cloudbuild.builds.editor"
  member  = "group:gcp.sre-admin@eslo.com.br"

  #   depends_on = [module.base_shared_vpc_project]
}
