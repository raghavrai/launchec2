# compute module for compute resources. For now, there is only one ec2 instance configured.
module "compute" {
  source               = "./modules/compute"
  security_group       = module.security.security_group
  vpc_id               = var.vpc_id
}

# security module for security resources. For now, there is only one SG which is attached to the abovementioned ec2.
module "security" {
  source               = "./modules/security"
  allowed_cidr_block   = var.allowed_cidr_block
  app_name             = var.app_name
  vpc_id               = var.vpc_id
}