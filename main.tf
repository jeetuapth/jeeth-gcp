provider "google" {
  project = "jitendralab"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_dns_managed_zone" "example-zone" {
  name        = "Bruttech-zone"
  dns_name    = "Bruttech-${random_id.rnd.hex}.com."
  description = "Cloud DNS Module"
  labels = {
    foo = "bar"
  }
}

resource "random_id" "rnd" {
  byte_length = 4
}
