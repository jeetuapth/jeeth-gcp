module "network" {
  source  = "app.terraform.io/Bruttech/network/google"
  version = "2.0.2"
  # insert required variables here
  project = var.project
  region  = var.region
  zone = var.zone
  app_name	= var.app_name
  private_subnet_cidr_1	=	var.private_subnet_cidr_1
}

