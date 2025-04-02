variable "vpc_id" {}
variable "allowed_ports" {
  type = list(number)
}
variable "allowed_cidrs" {
  type = list(string)
}
