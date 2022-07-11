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

variable "service_port_name" {
  type    = number
  default = "80"
}

variable "service_port" {
  type    = number
  default = "80"
}

variable "backend" {
  type    = map
  
}
