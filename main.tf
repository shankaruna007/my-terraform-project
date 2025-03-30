module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "subnet" {
  source   = "./modules/subnet"
  vpc_id   = module.vpc.vpc_id
  cidr     = "10.0.1.0/24"
}

module "security_group" {
  source  = "./modules/security-group"
  vpc_id  = module.vpc.vpc_id
}

module "ec2" {
  source            = "./modules/ec2"
  instance_type     = "t3.micro"
  subnet_id         = module.subnet.subnet_id
  security_group_id = module.security_group.sg_id
}
