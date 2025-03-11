provider "google" {
  project = "your-project-id"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "google_compute_instance" "vm_instance" {
  name         = "my-terraform-vm"
  machine_type = "n1-standard-1"
  
  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-9-stretch-v20190710"
    }
  }

  network_interface {
    network = "default"
    access_config {
      # This will create an external IP address
    }
  }
}

output "instance_ip" {
  value = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}
