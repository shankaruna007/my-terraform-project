resource "aws_security_group" "this" {
  vpc_id = var.vpc_id
  tags   = { Name = "SecurityGroup" }
}

resource "aws_security_group_rule" "ingress" {
  count = length(var.allowed_ports)

  type        = "ingress"
  from_port   = var.allowed_ports[count.index]
  to_port     = var.allowed_ports[count.index]
  protocol    = "tcp"
  cidr_blocks = var.allowed_cidrs
  security_group_id = aws_security_group.this.id
}

resource "aws_security_group_rule" "egress" {
  type        = "egress"
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = aws_security_group.this.id
}
