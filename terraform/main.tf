module "vm" {
  # for_each = toset([for i in range(var.vm_count) : "vm-${i + 1}"])  # Convert to a set of strings
  
  source    = "./modules/vm"
  image = var.image
  machine_type = var.machine_type
  project_id = var.project_id
  region     = var.region
  zone       = var.zone
  vm_name    = var.vm_name  # Use the key from for_each (which is the vm name)
}

