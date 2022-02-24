output "ip_externo" {
  value = google_compute_instance.lagertha[*].network_interface.0.access_config.0.nat_ip
}

output "id" {
  value = google_compute_instance.lagertha[*].id
}

output "vm_name" {
  value = google_compute_instance.lagertha[*].name
}