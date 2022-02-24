# resource "google_compute_network" "vpc_network" {
#   name                    = "bob"
#   auto_create_subnetworks = false
# }

resource "google_compute_subnetwork" "rollo" {
  name          = "rollo"
  ip_cidr_range = "10.240.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.ivar.id
}

resource "google_compute_network" "ivar" {
  name                    = "ivar"
  auto_create_subnetworks = false
}