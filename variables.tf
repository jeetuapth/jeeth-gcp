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
   backends = {
    default = {
      description             = null
      protocol                = "HTTP"
      port                    = var.service_port
      port_name               = var.service_port_name
      timeout_sec             = 10
      enable_cdn              = false
      custom_request_headers  = null
      custom_response_headers = null
      security_policy         = null
      connection_draining_timeout_sec = null
      session_affinity                = null
      affinity_cookie_ttl_sec         = null
}
   }
}
