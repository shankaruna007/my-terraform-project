variable "allowed_ports" {
  description = "List of allowed ports in the security group"
  type        = list(number)
}

variable "allowed_cidrs" {
  description = "List of allowed CIDR blocks"
  type        = list(string)
}
