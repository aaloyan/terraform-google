resource "google_project" "my_project-in-a-folder" {
  name       = var.project
  project_id = ""
  folder_id  = google_folder.department1.name
}

resource "google_folder" "department" {
  display_name = var.dev_folder
  parent       = "organizations/922091268962"
}
