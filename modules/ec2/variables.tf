variable "ami_id" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "security_group_ids" {
  type = list(string)
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}
