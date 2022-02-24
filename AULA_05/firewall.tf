
resource "google_compute_firewall" "valhalla-ingress" {
  name    = "valhalla-ingress"
  network = google_compute_network.ivar.name

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["admin", "web"]
}