module "vpc" {
  source   = "./vpc"
  vpc_cidr = var.vpc_cidr
}

module "subnet" {
  source      = "./subnet"
  vpc_id      = module.vpc.vpc_id
  subnet_cidr = var.subnet_cidr
}

module "security_group" {
  source       = "./security-group"
  vpc_id       = module.vpc.vpc_id
  allowed_ports = var.allowed_ports
}

module "ec2" {
  source             = "./ec2"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.subnet.subnet_id
  security_group_ids = [module.security_group.security_group_id]
}
