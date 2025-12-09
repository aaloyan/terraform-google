resource "google_folder" "application" {
  display_name = var.folder
  parent       = "organizations/922091268962"
}

resource "google_folder" "development" {
  display_name = var.dev_folder
  parent       = google_folder.application.name
}

resource "google_project" "dev_project" {
  name       = var.project
  project_id = var.project
  folder_id  = google_folder.development.name
}
