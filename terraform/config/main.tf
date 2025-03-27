resource "google_compute_instance" "vm" {
  name         = var.vm_name
  machine_type = "n1-standard-1"
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
      // This will assign an external IP
    }
  }

  tags = ["web", "app"]
}

