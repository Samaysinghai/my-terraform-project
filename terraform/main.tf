module "vm" {
  # for_each = toset([for i in range(var.vm_count) : "vm-${i + 1}"])  # Convert to a set of strings

  source    = "./modules/vm"
  project_id = var.project_id
  region     = var.region
  zone       = var.zone
  vm_name    = each.key  # Use the key from for_each (which is the vm name)
}

