resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    } #this is for installing nginx while creating instance itself
    
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
