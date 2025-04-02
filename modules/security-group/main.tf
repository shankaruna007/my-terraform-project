resource "aws_security_group" "this" {
  vpc_id      = var.vpc_id
  description = "Security group for application instances"

  dynamic "ingress" {
    for_each = var.allowed_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = var.allowed_cidrs
      description = "Allow inbound traffic on port ${ingress.value}"
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.0.0/16"]
    description = "Allow all outbound traffic"
  }
}