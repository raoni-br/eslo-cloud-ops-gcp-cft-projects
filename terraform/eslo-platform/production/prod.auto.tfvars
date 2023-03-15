org_id                     = "972983908711"
billing_account            = "014D90-2E1331-0F1156"
terraform_service_account  = "org-terraform@eslo-seed-4117.iam.gserviceaccount.com"

skip_gcloud_download = true

access_context_manager_policy_id = "497856318597"
perimeter_name = "sp_p_shared_restricted_default_perimeter_072e"

firewall_enable_logging = false

# alert_pubsub_topic   = ""
alert_spent_percents = [0.5, 0.75, 1]
budget_amount        = 1000

activate_apis = [
    "cloudresourcemanager.googleapis.com",
    "compute.googleapis.com",
    "iam.googleapis.com",
    "oslogin.googleapis.com",
    "servicenetworking.googleapis.com",
    "sqladmin.googleapis.com",
    "billingbudgets.googleapis.com",
    "logging.googleapis.com",
    "run.googleapis.com",
    "sql-component.googleapis.com",
    "vpcaccess.googleapis.com",
    "cloudbuild.googleapis.com",
    "monitoring.googleapis.com",
]


monitoring_workspace_users = "gcp.sre-admin@eslo.com.br"
monitoring_project_id      = "prj-p-monitoring-262f"