variable "vpc_id" {
  description = "VPC ID where the security group will be created"
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
