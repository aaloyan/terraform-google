provider "google" {
  project = var.project_id
}

resource "google_storage_bucket" "terraform_state" {
  name          = var.bucket_name
  project       = var.project_id
  location     = var.location
  storage_class = var.storage_class
  force_destroy = var.force_destroy

  uniform_bucket_level_access = true

  versioning {
    enabled = var.versioning_enabled
  }
}