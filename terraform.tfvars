aws_region         = "us-east-1"
vpc_cidr_block     = "10.0.0.0/16"
subnet_cidr_block  = "10.0.1.0/24"
availability_zone  = "us-east-1a"
allowed_ports      = [22, 80, 443]
allowed_cidrs      = ["0.0.0.0/0"]
ami_id             = "ami-12345678"
instance_type      = "t3.micro"
