variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region where resources will be created"
  default     = "us-central1"
}

variable "zone" {
  description = "The GCP zone where the VM will be created"
  default     = "us-central1-a"
}
