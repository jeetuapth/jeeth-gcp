variable "networks" {
  type = list()
  default = null
}

variable "auto_create_subnet" {
  type = Bool
  default = false
}

variable "private_zone" {
  type = string
}

variable "dns_name" {
  type = string
  default = "abc.com"
}
