resource "google_folder" "application" {
  display_name = var.folder
  parent       = "organizations/922091268962"
}

resource "google_folder" "development" {
  display_name = var.dev_folder
  parent       = google_folder.application.name
}

resource "google_folder" "staging" {
  display_name = var.staging_folder
  parent       = google_folder.application.name
}

resource "google_folder" "production" {
  display_name = var.prod_folder
  parent       = google_folder.application.name
}

resource "google_project" "dev_project" {
  name       = var.dev_project
  project_id = var.dev_project
  folder_id  = google_folder.development.name
}

resource "google_project" "staging_project" {
  name       = var.staging_project
  project_id = var.staging_project
  folder_id  = google_folder.staging.name
}

resource "google_project" "prod_project" {
  name       = var.prod_project
  project_id = var.prod_project
  folder_id  = google_folder.production.name
}
