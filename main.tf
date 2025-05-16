provider "google" {
  credentials = file(var.gcp_credentials_file)
  project     = var.project_id
  region      = var.region
}

resource "google_storage_bucket" "bucket" {
  name     = "${var.project_id}-burrito-demo"
  location = var.region
}
