provider "google" {
  project = "jitendralab"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "cloud_dns" {
  count                   = length(var.networks)
  name                    = var.networks[count.index]
  auto_create_subnetworks = var.auto_create_subnet

}

resource "google_dns_managed_zone" "cloud_dns" {
  name        = var.private_zone
  dns_name    = var.dns_name
  description = "private dns zone with module"
  labels = {
    purpose = "test"
  }

  visibility = "private"
  private_visibility_config {
    count = length(var.networks)
    networks {
      network_url = google_compute_network.cloud_dns[count.index].id
    }
  }

}



