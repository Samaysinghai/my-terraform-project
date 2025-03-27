variable "project_id" {
  description = "The project ID where GCP resources will be created."
  type        = string
}

variable "region" {
  description = "The region where resources will be created."
  type        = string
}

variable "zone" {
  description = "The zone within the region where VMs will be created."
  type        = string
}

variable "vm_count" {
  description = "Number of VMs to create."
  type        = number
  default     = 10
}
