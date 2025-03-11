# Use the latest provider for Google Cloud
provider "google" {
  #credentials = file("service-account-key.json")  # Specify the path to your service account key
  project     = "fine-arbor-452306-t2"  # Replace with your actual project ID
  region      = "us-central1"  # Update to your preferred region
}

resource "google_compute_instance" "my-vm" {
  name         = "my-instance"
  machine_type = "e2-medium"  # Use the latest VM type available in GCP
  zone         = "us-central1-a"  # Change to your preferred zone

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/family/ubuntu-2004-lts"  # Debian 11 is the latest stable version
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Include this block to assign an external IP
    }
  }
}
