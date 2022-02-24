# data "google_compute_network" "bjorn" {
#   name = "ivar"
# }

resource "google_compute_instance" "lagertha" {
  count        = var.amount
  name         = format("%s-%s-%s", var.vm_name, terraform.workspace, count.index)
  machine_type = var.vm_machine_type
  zone         = var.vm_zone
  tags         = ["admin", "web"]

  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }

  network_interface {
    network    = google_compute_network.ivar.name
    subnetwork = google_compute_subnetwork.rollo.id

    access_config {
      // Ephemeral IP
    }
  }
}