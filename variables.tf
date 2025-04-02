variable "aws_region" {}
variable "vpc_cidr_block" {}
variable "subnet_cidr_block" {}
variable "availability_zone" {}
variable "allowed_ports" {
  type = list(number)
}
variable "allowed_cidrs" {
  type = list(string)
}
variable "ami_id" {}
variable "instance_type" {}
variable "instance_name" {}