module "vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = var.vpc_cidr
  environment = var.environment
}

module "subnet" {
  source      = "../modules/subnet"
  vpc_id      = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
}

module "security-group" {
  source      = "../modules/security-group"
  vpc_id      = module.vpc.vpc_id
}

module "ec2" {
  source         = "../modules/ec2"
  subnet_id      = module.subnet.subnet_id
  security_group = module.security-group.security_group_id
  instance_type  = var.instance_type
}
