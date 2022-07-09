variable "networks" {
  type    = list("network1","network2")
  default = null
}

variable "auto_create_subnet" {
  type    = bool
  default = false
}

variable "private_zone" {
  type = string
}

variable "dns_name" {
  type    = string
  default = "abc.com"
}

