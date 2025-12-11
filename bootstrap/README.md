# Terraform Bootstrap Module  
This module creates a Google Cloud Storage (GCS) bucket to store Terraform remote state.

## 📌 Purpose
Use this module once during project bootstrap to create a secure and versioned GCS bucket for storing Terraform state files.

---

## 🚀 Usage Example

```hcl
module "terraform_state" {
  source = "./bootstrap"

  project_id        = "<YOUR_PROJECT_ID>"
  bucket_name       = "<UNIQUE_BUCKET_NAME>"
  location          = "<BUCKET_LOCATION>"
  storage_class     = "<STORAGE_CLASS>"          # e.g., STANDARD
  versioning_enabled = true
  force_destroy      = true

  labels = {
    purpose     = "terraform-state"
    managed_by  = "terraform"
    environment = "<ENVIRONMENT>"
    team        = "<TEAM_NAME>"
  }
}
