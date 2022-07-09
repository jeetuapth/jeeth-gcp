provider "google" {
  project = "jitendralab"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_dns_managed_zone" "cloud-dns" {
  name        = "bruttech-zone"
  dns_name    = "bruttech-${random_id.rnd.hex}.com."
  description = "Cloud DNS Module1"
  labels = {
    foo = "bar"
  }
}

resource "random_id" "rnd" {
  byte_length = 4
}
