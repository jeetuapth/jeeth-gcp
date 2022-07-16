module "network" {
  source  = "app.terraform.io/Bruttech/network/google"
  version = "2.0.5"
  # insert required variables here
  project = var.project
  region  = var.region
  zone = var.zone
  #project = "jitendralab"
  #region  = "us-central1"
  #zone = "us-central1-a"
  app_name	= var.app_name
  #private_subnet_cidr_1	=	var.private_subnet_cidr_1
  private-subnet  = var.private-subnet
  private_subnet_cidr = var.private_subnet_cidr

 }

/*
module "network_Subnet_2" {
  source  = "app.terraform.io/Bruttech/network/google"
  version = "2.0.3"
  # insert required variables here
  project = var.project
  region  = var.region
  zone = var.zone
  #project = "jitendralab"
  #region  = "us-central1"
  #zone = "us-central1-a"
  app_name	= var.app_name
  private_subnet_cidr_1	=	var.private_subnet_cidr_2
}

*/