variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "AWS availability zone for the subnet"
  type        = string
}

variable "allowed_ports" {
  description = "List of allowed inbound ports"
  type        = list(number)
}

variable "allowed_cidrs" {
  description = "List of allowed CIDRs"
  type        = list(string)
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2"
  type        = string
  default     = "t3.micro"
}
