module "vm" {
  # for_each = toset([for i in range(var.vm_count) : "vm-${i + 1}"])  # Convert to a set of strings
  
  source    = "./modules/vm"
  project_id = "fine-arbor-452306-t2"
region     = "us-central1"
zone       = "us-central1-b"
vm_name = "my-vm"
machine_type = "e2-medium"  
image        = "debian-9-stretch-v20191014"
}

