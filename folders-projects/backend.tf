terraform {
  backend "gcs" {
    bucket  = "name"
    prefix  = "folders-projects"
    project = "Bootstrap"
  }
}
