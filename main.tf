provider "google" {
  project = "jitendralab"
  region  = "asia-south1"
  zone    = "asia-south1-c"
}
/*
resource "google_compute_route" "default" {
  name        = "network-route"
  dest_range  = "15.0.0.0/24"
  network     = google_compute_network.default.name
  next_hop_ip = "10.132.1.5"
  priority    = 100
}

resource "google_compute_network" "default" {
  name = "compute-network"
}
*\