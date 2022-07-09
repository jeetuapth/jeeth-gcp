variable "project" {
  type    = string
  default = "jitendralab"
}

variable "region" {
  type    = string
    default = "asia-south1"
}

variable "zone" {
  type    = string
  default = "asia-south1-c"
}



variable "networks_name" {
  type    = string
  default = "jeeth-network"
}

variable "auto_create_subnet" {
  type    = bool
  default = false
}

variable "advertise_mode" {
  type    = string
  default = "CUSTOM"
}

variable "asn" {
  type    = string
  default = "64514"
}
variable "cloud_router_name" {
  type    = string
  default = "jeeth-cloud-router"
}