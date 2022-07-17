# define GCP project name
variable "project" {
  type = string
  description = "GCP project name"
  default = "jitendralab"
}

# define GCP region
variable "region" {
  type = string
  description = "GCP region"
  default     = "us-central1"
}
# define GCP zone
variable "zone" {
  type = string
  description = "GCP zone"
  default     = "us-central1-a"
}

/*
# define private subnet
variable "private_subnet_cidr_1" {
  type = string
  description = "private_subnet_CIDR 1"
  default     = "10.0.10.0/28"
}
variable "private-subnet" {
  description = "Create private subnets with these names"
  type        = list(any)
  default = [ {
    "name" = "web-subnet"
    "cidr"  = "10.0.10.0/28"
  },
  {
   "name" = "app-subnet"
    "cidr"  = "10.0.11.0/28"
  },
  {
   "name" = "db-subnet"
    "cidr"  = "10.0.12.0/28"
  }  ]
}
*/
variable "private-subnet" {
  description = "Create private subnets with these names"
  type        = map(any)
  default = {
    "web-subnet"  = {
    "cidr"  = "10.0.10.0/28"
  },
   "app-subnet" = {
    "cidr"  = "10.0.11.0/28"
  },
  "db-subnet" = {
    "cidr"  = "10.0.12.0/28"
  }  
}

# define application name
variable "app_name" {
  type = string
  description = "Application name"
  default = "jitendra-gcp-application"
}

