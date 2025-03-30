variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-071226ecf16aa7d96"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be deployed"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to attach to the instance"
  type        = list(string)
}
