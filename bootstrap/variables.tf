variable "project_id" {
  description = "The GCP project ID where the bucket will be created"
  type        = string
}

variable "bucket_name" {
  description = "Name of the GCS bucket for Terraform state (must be globally unique)"
  type        = string
}

variable "location" {
  description = "The location of the bucket (US, EU, ASIA, or specific region)"
  type        = string
  default     = "US"
}

variable "storage_class" {
  description = "The storage class of the bucket"
  type        = string
  default     = "STANDARD"

  validation {
    condition     = contains(["STANDARD", "NEARLINE", "COLDLINE", "ARCHIVE"], var.storage_class)
    error_message = "Storage class must be one of: STANDARD, NEARLINE, COLDLINE, ARCHIVE."
  }
}

variable "versioning_enabled" {
  description = "Enable versioning for the bucket"
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Allow deletion of bucket with objects inside"
  type        = bool
  default     = true
}

variable "labels" {
  description = "Labels to apply to the bucket"
  type        = map(string)
  default = {
    purpose     = "terraform-state"
    managed_by  = "terraform"
    environment = "bootstrap"
  }
}