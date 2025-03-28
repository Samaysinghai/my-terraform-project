module "vm" {
  
  
  source    = "./modules/vm"
  image = var.image
  machine_type = var.machine_type
  project_id = var.project_id
  region     = var.region
  zone       = var.zone
  vm_name    = var.vm_name  # Use the key from for_each (which is the vm name)
}

