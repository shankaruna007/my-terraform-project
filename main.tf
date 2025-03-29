provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./vpc"
  cidr_block = var.vpc_cidr_block
}

module "ec2_instance" {
  source        = "./ec2_instance"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.subnet_id
}

output "ec2_instance_id" {
  value = module.ec2_instance.instance_id
}

output "ec2_public_ip" {
  value = module.ec2_instance.public_ip
}

output "vpc_id" {
  value = module.vpc.vpc_id
}
