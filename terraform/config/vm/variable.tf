variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "region" {
  description = "The region where the VM will be created."
  type        = string
}

variable "zone" {
  description = "The zone where the VM will be created."
  type        = string
}

variable "vm_name" {
  description = "Name of the virtual machine."
  type        = string
}


