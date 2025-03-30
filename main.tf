module "vpc" {
  source        = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_name      = var.vpc_name
}

module "subnet" {
  source           = "./modules/subnet"
  vpc_id           = module.vpc.vpc_id
  subnet_cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone
}

module "security_group" {
  source        = "./modules/security-group"
  vpc_id        = module.vpc.vpc_id
  allowed_ports = var.allowed_ports
  allowed_cidrs = var.allowed_cidrs
}

module "ec2" {
  source            = "./modules/ec2"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.subnet.subnet_id
  security_group_id = module.security_group.security_group_id
}
