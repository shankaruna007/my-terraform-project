variable "allowed_ports" {
  description = "List of allowed inbound ports"
  type        = list(number)
}

variable "allowed_cidrs" {
  description = "List of allowed CIDRs"
  type        = list(string)
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}
