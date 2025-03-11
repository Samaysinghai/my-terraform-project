# Use the latest provider for Google Cloud
provider "google" {
  #credentials = file("service-account-key.json")  # Specify the path to your service account key
  project     = "fine-arbor-452306-t2"  # Replace with your actual project ID
  region      = "us-central1"  # Update to your preferred region
}

resource "google_compute_instance" "my_vm" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      # Use image family instead of specific image version
      image = "projects/ubuntu-os-cloud/global/images/family/ubuntu-2004-lts"  # Image family for Ubuntu 20.04 LTS
    }
  }

  network_interface {
    network = "default"
    access_config {
      // This block is required for creating a public IP
    }
  }

  tags = ["web-server"]
}
