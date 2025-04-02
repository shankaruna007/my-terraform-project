# Terraform AWS Infrastructure

This project deploys a secure AWS environment using Terraform.

## Modules:
- **VPC**: Creates a VPC with CIDR block.
- **Subnet**: Deploys a subnet in the VPC.
- **Security Group**: Defines inbound/outbound rules.
- **EC2 Instance**: Launches an EC2 instance with best practices.

## Security Features:
✅ No open security group rules (only internal CIDR).  
✅ IMDSv2 enforced for EC2.  
✅ Root volume encryption enabled.  

## Deployment:
```sh
terraform init
terraform plan
terraform apply
