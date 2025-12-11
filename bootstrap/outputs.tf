output "bucket_id" {
  description = "The ID/name of the bucket - use this in your backend configuration"
  value       = google_storage_bucket.terraform_state.id
}

output "bucket_name" {
  description = "The name of the bucket"
  value       = google_storage_bucket.terraform_state.name
}

output "bucket_url" {
  description = "The base URL of the bucket"
  value       = google_storage_bucket.terraform_state.url
}

output "bucket_self_link" {
  description = "The URI of the bucket"
  value       = google_storage_bucket.terraform_state.self_link
}

output "backend_config" {
  description = "Backend configuration block to use in other modules"
  value = {
    bucket = google_storage_bucket.terraform_state.name
    prefix = "terraform/state"
  }
}