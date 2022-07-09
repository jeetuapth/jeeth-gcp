provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}
resource "google_compute_router" "cloud_router" {
  name    = var.cloud_router_name
  network = google_compute_network.cloud_router.name

  bgp {
    asn               = var.asn
    advertise_mode    = var.advertise_mode
    keepalive_interval = 30
    advertised_groups = ["var.advertised_groups"]
       advertised_ip_ranges {
      range = "10.0.10.0/29"
    }
    advertised_ip_ranges {
      range = "10.0.20.0/28"
    }
  }
}

resource "google_compute_network" "cloud_router" {
  name                    = var.networks_name
  auto_create_subnetworks = var.auto_create_subnet

}