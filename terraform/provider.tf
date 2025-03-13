provider "google" {
  project = var.project_id
  region  = var.region
  credentials = jsondecode(data.google_secret_manager_secret_version.terraform_service_account_secret.secret_data)
}
data "google_secret_manager_secret_version" "terraform_service_account_secret" {
  secret = "first-sctmanager" # This is the secret name in Secret Manager
} 
